import 'package:func/func.dart';
import 'package:sealed_unions/union_3.dart';

class Union3Impl<A, B, C> implements Union3<A, B, C> {
  final Union3<A, B, C> _union;

  Union3Impl(Union3<A, B, C> union) : _union = union;

  @override
  void continued(VoidFunc1<A> continuationFirst,
      VoidFunc1<B> continuationSecond,
      VoidFunc1<C> continuationThird,) {
    _union.continued(continuationFirst, continuationSecond, continuationThird);
  }

  @override
  R join<R>(Func1<A, R> mapFirst, Func1<B, R> mapSecond, Func1<C, R> mapThird) {
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