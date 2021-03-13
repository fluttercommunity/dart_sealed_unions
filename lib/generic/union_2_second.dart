import 'package:sealed_unions/union_2.dart';

class Union2Second<T, U> implements Union2<T, U> {
  final U _value;

  Union2Second(this._value);

  @override
  void continued(
    Function(T) continuationFirst,
    Function(U) continuationSecond,
  ) {
    continuationSecond(_value);
  }

  @override
  R join<R>(R Function(T) mapFirst, R Function(U) mapSecond) => mapSecond(_value);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Union2Second && runtimeType == other.runtimeType && _value == other._value;

  @override
  int get hashCode => _value.hashCode;

  @override
  String toString() => _value.toString();
}
