import 'package:sealed_unions/union_3.dart';

class Union3Impl<A, B, C> implements Union3<A, B, C> {
  final Union3<A, B, C> _union;

  Union3Impl(Union3<A, B, C> union) : _union = union;

  @override
  void continued(
    Function(A) continuationFirst,
    Function(B) continuationSecond,
    Function(C) continuationThird,
  ) {
    _union.continued(continuationFirst, continuationSecond, continuationThird);
  }

  @override
  R join<R>(
      R Function(A) mapFirst, R Function(B) mapSecond, R Function(C) mapThird) {
    return _union.join(mapFirst, mapSecond, mapThird);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Union3Impl &&
          runtimeType == other.runtimeType &&
          _union == other._union;

  @override
  int get hashCode => _union.hashCode;
}
