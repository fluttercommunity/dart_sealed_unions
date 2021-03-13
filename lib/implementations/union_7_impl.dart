import 'package:sealed_unions/union_7.dart';

class Union7Impl<A, B, C, D, E, F, G> implements Union7<A, B, C, D, E, F, G> {
  final Union7<A, B, C, D, E, F, G> _union;

  Union7Impl(Union7<A, B, C, D, E, F, G> union) : _union = union;

  @override
  void continued(
      Function(A) continuationFirst,
      Function(B) continuationSecond,
      Function(C) continuationThird,
      Function(D) continuationFourth,
      Function(E) continuationFifth,
      Function(F) continuationSixth,
      Function(G) continuationSeventh) {
    _union.continued(
      continuationFirst,
      continuationSecond,
      continuationThird,
      continuationFourth,
      continuationFifth,
      continuationSixth,
      continuationSeventh,
    );
  }

  @override
  R join<R>(R Function(A) mapFirst, R Function(B) mapSecond, R Function(C) mapThird, R Function(D) mapFourth,
      R Function(E) mapFifth, R Function(F) mapSixth, R Function(G) mapSeventh) {
    return _union.join(mapFirst, mapSecond, mapThird, mapFourth, mapFifth, mapSixth, mapSeventh);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Union7Impl && runtimeType == other.runtimeType && _union == other._union;

  @override
  int get hashCode => _union.hashCode;
}
