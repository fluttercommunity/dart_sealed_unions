import 'package:sealed_unions/union_8.dart';

class Union8Sixth<A, B, C, D, E, F, G, H> implements Union8<A, B, C, D, E, F, G, H> {
  final F _value;

  Union8Sixth(this._value);

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
  ) {
    continuationSixth(_value);
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
  ) {
    return mapSixth(_value);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Union8Sixth && runtimeType == other.runtimeType && _value == other._value;

  @override
  int get hashCode => _value.hashCode;

  @override
  String toString() => _value.toString();
}
