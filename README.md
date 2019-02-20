# dart_sealed_unions

## ACKNOWLEDGEMENTS
This library is a port of [JavaSealedUnions](https://github.com/pakoito/JavaSealedUnions/blob/master/README.md) originally created by [Francisco](https://github.com/pakoito/) ([Paco](https://github.com/pakoito/)) [Estévez
](https://github.com/pakoito/).

`Dart` port by [George Medve](https://github.com/nodinosaur) with assistance from [Jan Knotek](https://github.com/JanKn) and [Brian Egan](https://github.com/brianegan).

## RATIONALE
Sealed classes are used for representing restricted class hierarchies, when a value can have one of the types from a limited set, but cannot have any other type. They are, in a sense, an extension of enum classes: the set of values for an enum type is also restricted, but each enum constant exists only as a single instance, whereas a subclass of a sealed class can have multiple instances which can contain state.
Sealed classes are available in languages like [Kotlin](https://kotlinlang.org/docs/reference/classes.html#sealed-classes), or [C#](https://msdn.microsoft.com/en-gb/library/88c54tsw.aspx). Tagged unions are common on [Swift](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Enumerations.html) and [Rust](https://doc.rust-lang.org/book/enums.html).

We highly recommend reading the [Rationale](https://github.com/pakoito/JavaSealedUnions/blob/master/README.md#rationale) for the readme of [JavaSealedUnions](https://github.com/pakoito/JavaSealedUnions/blob/master/README.md) for an indepth explanation of the idea and application of the library.

## MOTIVATION
This library was heavily inspired by [RxEither](https://github.com/eleventigers/rxeither) and the wonderful [Domain Driven Design](https://fsharpforfunandprofit.com/ddd/) (DDD) talk by [Scott Wlaschin](https://github.com/swlaschin).
This video by Scott Wlaschin will inspire you on how to apply DDD:
[Domain Driven Design, F# and Types](https://skillsmatter.com/skillscasts/4971-domain-driven-design-with-scott-wlaschin)

## USAGE
The following example project: [MVI Sealed Unions](https://github.com/fluttercommunity/mvi_sealed_unions) demonstrates the library application in a Flutter app.

## INSTALLING
#### 1. Depend on it
Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  sealed_unions: "^3.0.2"
```

#### 2.Install it
You can install packages from the command line:

with Flutter:
```bash
flutter packages get
```

with pub:
```bash
pub get
```

#### 3. Import it
Now in your Dart code, you can use:
```dart
// for example import Union4
import 'package:sealed_unions/union_4.dart';
```

# License
![FCLogo][FCLogo]

Copyright (c) fluttercommunity 2019

The Apache Software License, Version 2.0

See LICENSE.md

[FCLogo]:https://raw.githubusercontent.com/fluttercommunity/dart_sealed_unions/master/art/FlutterCommunity.png
