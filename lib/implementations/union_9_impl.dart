import 'package:sealed_unions/union_9.dart';

class Union9Impl<A, B, C, D, E, F, G, H, I>
    implements Union9<A, B, C, D, E, F, G, H, I> {
  final Union9<A, B, C, D, E, F, G, H, I> _union;

  Union9Impl(Union9<A, B, C, D, E, F, G, H, I> union) : _union = union;

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
      Function(I) continuationNinth) {
    _union.continued(
        continuationFirst,
        continuationSecond,
        continuationThird,
        continuationFourth,
        continuationFifth,
        continuationSixth,
        continuationSeventh,
        continuationEighth,
        continuationNinth);
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
      R Function(I) mapNinth) {
    return _union.join(mapFirst, mapSecond, mapThird, mapFourth, mapFifth,
        mapSixth, mapSeventh, mapEighth, mapNinth);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Union9Impl &&
          runtimeType == other.runtimeType &&
          _union == other._union;

  @override
  int get hashCode => _union.hashCode;
}
