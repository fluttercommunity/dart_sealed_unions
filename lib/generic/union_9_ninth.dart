import 'package:sealed_unions/union_9.dart';

class Union9Ninth<A, B, C, D, E, F, G, H, I>
    implements Union9<A, B, C, D, E, F, G, H, I> {
  final I _value;

  Union9Ninth(this._value);

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
    continuationNinth(_value);
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
    return mapNinth(_value);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Union9Ninth &&
          runtimeType == other.runtimeType &&
          _value == other._value;

  @override
  int get hashCode => _value.hashCode;

  @override
  String toString() => _value.toString();
}
