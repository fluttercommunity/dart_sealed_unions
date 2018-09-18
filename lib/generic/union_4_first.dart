import 'package:sealed_unions/union_4.dart';

class Union4First<A, B, C, D> implements Union4<A, B, C, D> {
  final A _value;

  Union4First(this._value);

  @override
  void continued(
    Function(A) continuationFirst,
    Function(B) continuationSecond,
    Function(C) continuationThird,
    Function(D) continuationFourth,
  ) {
    continuationFirst(_value);
  }

  @override
  R join<R>(
    R Function(A) mapFirst,
    R Function(B) mapSecond,
    R Function(C) mapThird,
    R Function(D) mapFourth,
  ) {
    return mapFirst(_value);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Union4First &&
          runtimeType == other.runtimeType &&
          _value == other._value;

  @override
  int get hashCode => _value.hashCode;

  @override
  String toString() => _value.toString();
}
