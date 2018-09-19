import 'package:sealed_unions/union_5.dart';

class Union5Third<A, B, C, D, E> implements Union5<A, B, C, D, E> {
  final C _value;

  Union5Third(this._value);

  @override
  void continued(
    Function(A) continuationFirst,
    Function(B) continuationSecond,
    Function(C) continuationThird,
    Function(D) continuationFourth,
    Function(E) continuationFifth,
  ) {
    continuationThird(_value);
  }

  @override
  R join<R>(
    R Function(A) mapFirst,
    R Function(B) mapSecond,
    R Function(C) mapThird,
    R Function(D) mapFourth,
    R Function(E) mapFifth,
  ) {
    return mapThird(_value);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Union5Third &&
          runtimeType == other.runtimeType &&
          _value == other._value;

  @override
  int get hashCode => _value.hashCode;

  @override
  String toString() => _value.toString();
}
