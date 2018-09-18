import 'package:sealed_unions/union_2.dart';

class Union2Impl<A, B> implements Union2<A, B> {
  final Union2<A, B> _union;

  Union2Impl(Union2<A, B> union) : _union = union;

  @override
  void continued(
      Function(A) continuationFirst, Function(B) continuationSecond) {
    _union.continued(continuationFirst, continuationSecond);
  }

  @override
  R join<R>(R Function(A) mapFirst, R Function(B) mapSecond) {
    return _union.join(mapFirst, mapSecond);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Union2Impl &&
          runtimeType == other.runtimeType &&
          _union == other._union;

  @override
  int get hashCode => _union.hashCode;
}
