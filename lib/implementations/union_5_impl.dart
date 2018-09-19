import 'package:sealed_unions/union_5.dart';

class Union5Impl<A, B, C, D, E> implements Union5<A, B, C, D, E> {
  final Union5<A, B, C, D, E> _union;

  Union5Impl(Union5<A, B, C, D, E> union) : _union = union;

  @override
  void continued(
    Function(A) continuationFirst,
    Function(B) continuationSecond,
    Function(C) continuationThird,
    Function(D) continuationFourth,
    Function(E) continuationFifth,
  ) {
    _union.continued(continuationFirst, continuationSecond, continuationThird,
        continuationFourth, continuationFifth);
  }

  @override
  R join<R>(R Function(A) mapFirst, R Function(B) mapSecond,
      R Function(C) mapThird, R Function(D) mapFourth, R Function(E) mapFifth) {
    return _union.join(mapFirst, mapSecond, mapThird, mapFourth, mapFifth);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Union5Impl &&
          runtimeType == other.runtimeType &&
          _union == other._union;

  @override
  int get hashCode => _union.hashCode;
}
