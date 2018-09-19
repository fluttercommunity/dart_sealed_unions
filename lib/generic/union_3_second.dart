import 'package:sealed_unions/union_3.dart';

class Union3Second<T, U, V> implements Union3<T, U, V> {
  final U _value;

  Union3Second(this._value);

  @override
  void continued(
    Function(T) continuationFirst,
    Function(U) continuationSecond,
    Function(V) continuationThird,
  ) {
    continuationSecond(_value);
  }

  @override
  R join<R>(
      R Function(T) mapFirst, R Function(U) mapSecond, R Function(V) mapThird) {
    return mapSecond(_value);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Union3Second &&
          runtimeType == other.runtimeType &&
          _value == other._value;

  @override
  int get hashCode => _value.hashCode;

  @override
  String toString() => _value.toString();
}
