import 'package:sealed_unions/union_9.dart';

class Union9Fifth<A, B, C, D, E, F, G, H, I> implements Union9<A, B, C, D, E, F, G, H, I> {
  final E _value;

  Union9Fifth(this._value);

  @override
  void continued(
    Function(A) continuationFirst,
    Function(B) continuationSecond,
    Function(C) continuationThird,
    Function(D) continuationFourth,
    Function(E) continuationFifth,
    Function(F) continuationSixth,
    Function(G) continuationSeventh,
    Function(H) continuationEighth,
    Function(I) continuationNinth,
  ) {
    continuationFifth(_value);
  }

  @override
  R join<R>(
    R Function(A) mapFirst,
    R Function(B) mapSecond,
    R Function(C) mapThird,
    R Function(D) mapFourth,
    R Function(E) mapFifth,
    R Function(F) mapSixth,
    R Function(G) mapSeventh,
    R Function(H) mapEighth,
    R Function(I) mapNinth,
  ) {
    return mapFifth(_value);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Union9Fifth && runtimeType == other.runtimeType && _value == other._value;

  @override
  int get hashCode => _value.hashCode;

  @override
  String toString() => _value.toString();
}
