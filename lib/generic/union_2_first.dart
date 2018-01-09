import 'package:func/func.dart';
import 'package:sealed_unions/union_2.dart';

class Union2First<T, U> implements Union2<T, U> {
  final T _value;

  Union2First(this._value);

  @override
  void continued(
    VoidFunc1<T> continuationFirst,
    VoidFunc1<U> continuationSecond,
  ) {
    continuationFirst(_value);
  }

  @override
  R join<R>(Func1<T, R> mapFirst, Func1<U, R> mapSecond) => mapFirst(_value);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Union2First &&
          runtimeType == other.runtimeType &&
          _value == other._value;

  @override
  int get hashCode => _value.hashCode;

  @override
  String toString() => _value.toString();
}
