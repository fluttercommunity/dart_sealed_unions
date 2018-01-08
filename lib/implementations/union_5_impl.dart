import 'package:func/func.dart';
import 'package:sealed_unions/union_5.dart';

class Union5Impl<A, B, C, D, E> implements Union5<A, B, C, D, E> {
  final Union5<A, B, C, D, E> _union;

  Union5Impl(Union5<A, B, C, D, E> union) : _union = union;

  @override
  void continued(VoidFunc1<A> continuationFirst,
      VoidFunc1<B> continuationSecond, VoidFunc1<C> continuationThird,
      VoidFunc1<D> continuationFourth, VoidFunc1<E> continuationFifth) {
    _union.continued(continuationFirst, continuationSecond, continuationThird,
        continuationFourth, continuationFifth);
  }

  @override
  R join<R>(Func1<A, R> mapFirst, Func1<B, R> mapSecond, Func1<C, R> mapThird,
      Func1<D, R> mapFourth, Func1<E, R> mapFifth) {
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