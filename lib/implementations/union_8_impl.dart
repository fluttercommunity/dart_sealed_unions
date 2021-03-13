import 'package:sealed_unions/union_8.dart';

class Union8Impl<A, B, C, D, E, F, G, H> implements Union8<A, B, C, D, E, F, G, H> {
  final Union8<A, B, C, D, E, F, G, H> _union;

  Union8Impl(Union8<A, B, C, D, E, F, G, H> union) : _union = union;

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
    _union.continued(
      continuationFirst,
      continuationSecond,
      continuationThird,
      continuationFourth,
      continuationFifth,
      continuationSixth,
      continuationSeventh,
      continuationEighth,
    );
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
    return _union.join(
      mapFirst,
      mapSecond,
      mapThird,
      mapFourth,
      mapFifth,
      mapSixth,
      mapSeventh,
      mapEighth,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Union8Impl && runtimeType == other.runtimeType && _union == other._union;

  @override
  int get hashCode => _union.hashCode;
}
