import 'package:func/func.dart';
import 'package:sealed_unions/union_4.dart';

class Union4Impl<A, B, C, D> implements Union4<A, B, C, D> {
  final Union4<A, B, C, D> _union;

  Union4Impl(Union4<A, B, C, D> union) : _union = union;

  @override
  void continued(VoidFunc1<A> continuationFirst,
      VoidFunc1<B> continuationSecond,
      VoidFunc1<C> continuationThird,
      VoidFunc1<D> continuationFourth) {
    _union.continued(continuationFirst, continuationSecond,
        continuationThird, continuationFourth);
  }

  @override
  R join<R>(Func1<A, R> mapFirst, Func1<B, R> mapSecond,
      Func1<C, R> mapThird, Func1<D, R> mapFourth) {
    return _union.join(mapFirst, mapSecond, mapThird, mapFourth);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Union4Impl &&
              runtimeType == other.runtimeType &&
              _union == other._union;

  @override
  int get hashCode => _union.hashCode;
}