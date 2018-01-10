# dart_sealed_unions

## ACKNOWLEDGEMENTS
This library is a port of [JavaSealedUnions](https://github.com/pakoito/JavaSealedUnions/blob/master/README.md) originally created by [Francisco](https://github.com/pakoito/) ([Paco](https://github.com/pakoito/)) [Estévez
](https://github.com/pakoito/).

`Dart` port by [George Medve](https://github.com/nodinosaur) with assistance from [Jan Knotek](https://github.com/JanKn).

This read me file will be elaborated in due course.

## DISTRIBUTION
Add this to your package's `pubspec.yaml` file:

## RATIONALE
Sealed classes are used for representing restricted class hierarchies, when a value can have one of the types from a limited set, but cannot have any other type. They are, in a sense, an extension of enum classes: the set of values for an enum type is also restricted, but each enum constant exists only as a single instance, whereas a subclass of a sealed class can have multiple instances which can contain state.
Sealed classes are available in languages like [Kotlin](https://kotlinlang.org/docs/reference/classes.html#sealed-classes), or [C#](https://msdn.microsoft.com/en-gb/library/88c54tsw.aspx). Tagged unions are common on [Swift](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Enumerations.html) and [Rust](https://doc.rust-lang.org/book/enums.html).

We highly recommend reading the [Rational](https://github.com/pakoito/JavaSealedUnions/blob/master/README.md#rationale) for the readme of [JavaSealedUnions](https://github.com/pakoito/JavaSealedUnions/blob/master/README.md) for an indepth explanation of the idea and application of the library.

## USAGE
Below is a simple example of how DartSealedUnions might be applied inthe context of an `MVI` Flutter application. Where the `Presenter` observes & reacts to `View` intents, triggering a stream of fetching data and updating state. 

`screen_state.dart`
```dart
class ScreenState {

  final List<Object> data;
  final bool loading;
  final String error;

  factory ScreenState.initial() => new ScreenState._(data: new List.unmodifiable([]));

  ScreenState._({
    this.data ,
    this.loading = false,
    this.error
  });

  ScreenState copy({List<Object> data, bool loading, String error}) =>
      new ScreenState._(
          data: new List.unmodifiable(data ?? this.data),
          loading: loading ?? this.loading,
          error: error ?? this.error
      );


  @override
  String toString() {
    return 'ScreenState{loading: $loading, data: ${data.length}, error: $error}';
  }
}

```
`screen_state_partial.dart`
```dart
import 'package:my_flutter_app/example/screen_state.dart';

import 'package:sealed_unions/factories/quartet_factory.dart';
import 'package:sealed_unions/implementations/union_4_impl.dart';
import 'package:sealed_unions/union_4.dart';

/// [ScreenStatePartial] implementation of `UnionN` which might be considered as
/// an equivalent of a `Sealed Class` class.
/// Consider [FirstPage], [NextPage], [Loading] and [Error] as a subclasses
/// of the [ScreenStatePartial#Union4] `SealedClass`
class ScreenStatePartial
    extends Union4Impl<FirstPage, NextPage, Loading, Error> {

  static const Quartet<FirstPage,
      NextPage,
      Loading,
      Error> factory = const Quartet ();

  ScreenStatePartial._(Union4<FirstPage, NextPage, Loading, Error> union)
      :super(union);


  ScreenState reduce(ScreenState previous) {
    return this.join(
            (firstPage) =>
            previous.copy(
                data: firstPage.data,
                loading: false),

            (nextPage) =>
            previous.copy(
                data: new List()..addAll(previous.data)..addAll(nextPage.data),
                loading: false),

            (loading) =>
            previous.copy(
                loading: true,
                error: null),

            (error) =>
            previous.copy(
                error: error.message,
                loading: false)
    );
  }

  /// returns a new [ScreenStatePartial] with modified `UnionN.first()` state
  factory ScreenStatePartial.firstPage(List<Object> data) =>
      new ScreenStatePartial._(
          factory.first(
              new FirstPage(data)
          )
      );

  /// returns a new [ScreenStatePartial] with modified `UnionN.second()` state
  factory ScreenStatePartial.nextPage(List<Object> newData) =>
      new ScreenStatePartial._(
          factory.second(
              new NextPage(newData)
          )
      );

  /// returns a new [ScreenStatePartial] with modified `UnionN.third()` state
  factory ScreenStatePartial.loading() =>
      new ScreenStatePartial._(
          factory.third(
              new Loading()
          )
      );

  /// returns a new [ScreenStatePartial] with modified `UnionN.fourth()` state
  factory ScreenStatePartial.error(String message) =>
      new ScreenStatePartial._(
          factory.fourth(
              new Error(message)
          )
      );

  @override
  String toString() => 'ScreenStatePartial{$this}';
}

/// Data
class FirstPage {
  final List<Object> _data;

  const FirstPage(this._data);

  get data => _data;
}

/// Data
class NextPage {
  final List<Object> _data;

  const NextPage(this._data);

  get data => _data;
}

/// Loading state, stores a [percent]
class Loading {
  const Loading();
}

/// Error state stores the [message]
class Error {
  final String _message;

  const Error(this._message);

  get message => _message;
}
```
`screen_presenter.dart`
```dart
import 'dart:async';

import 'package:my_flutter_app/example/screen_state.dart';
import 'package:my_flutter_app/example/screen_state_partial.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

@immutable
class ScreenPresenter extends StreamView<ScreenState> {

  static ScreenState initialValue = new ScreenState.initial();

  /// Observes a refresh event, triggering a fetch on async data
  ScreenPresenter(Stream<Null> firstPageIntent, Stream<Null> nextPageIntent)
      : super(
      new Observable.merge([
        new Observable(firstPageIntent)
            .flatMap((_) => fetchFirstPageData()),
        new Observable(nextPageIntent)
            .flatMap((_) => fetchNextPageData())
      ])
          .scan((ScreenState acc, ScreenStatePartial curr, int index) =>
          reducer(acc, curr),
          initialValue
      )
          .stream
  );

  /// Here we `reduce` the state 
  static ScreenState reducer(ScreenState state,
      ScreenStatePartial partial) =>
      partial.reduce(state);

  /// emits data as a stream
  static Stream<ScreenStatePartial> fetchFirstPageData() async* {
    yield new ScreenStatePartial.loading();
    try {
      List<Object> data = await fetchDataFromServer();
      if (data.isNotEmpty) {
        /// emits a new [LoadingStatePartial] with updated state
        yield new ScreenStatePartial.firstPage(data);
      }
    } on Exception catch (e) {
      yield new ScreenStatePartial.error(e.toString());
    }
  }

  /// emits data as a stream 
  static Stream<ScreenStatePartial> fetchNextPageData() async* {
    yield new ScreenStatePartial.loading();
    try {
      List<Object> data = await fetchDataFromServer();
      if (data.isNotEmpty) {
        /// emits a new [LoadingStatePartial] with updated state
        yield new ScreenStatePartial.nextPage(data);
      }
    } on Exception catch (e) {
      yield new ScreenStatePartial.error(e.toString());
    }
  }

  static Future<List<Object>> fetchDataFromServer() async {
    // lengthy process
    return new List();
  }
}
```

```yaml
dependencies:
  sealed_unions: "^1.1.0"
```
You can install packages from the command line:

with pub:
```bash
pub get
```

with Flutter:
```bash
flutter packages get
```


# License

Copyright (c) flutterconsortium 2018

The Apache Software License, Version 2.0

See LICENSE.md
