import 'package:func/func.dart';
import 'package:sealed_unions/union_6.dart';

class Union6Impl<A, B, C, D, E, F> implements Union6<A, B, C, D, E, F> {
  final Union6<A, B, C, D, E, F> _union;

  Union6Impl(Union6<A, B, C, D, E, F> union) : _union = union;

  @override
  void continued(VoidFunc1<A> continuationFirst,
      VoidFunc1<B> continuationSecond, VoidFunc1<C> continuationThird,
      VoidFunc1<D> continuationFourth, VoidFunc1<E> continuationFifth,
      VoidFunc1<F> continuationSixth) {
    _union.continued(continuationFirst, continuationSecond, continuationThird,
        continuationFourth, continuationFifth, continuationSixth);
  }

  @override
  R join<R>(Func1<A, R> mapFirst, Func1<B, R> mapSecond, Func1<C, R> mapThird,
      Func1<D, R> mapFourth, Func1<E, R> mapFifth, Func1<F, R> mapSixth) {
    return _union.join(
        mapFirst, mapSecond, mapThird, mapFourth, mapFifth, mapSixth);
  }


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Union6Impl &&
              runtimeType == other.runtimeType &&
              _union == other._union;

  @override
  int get hashCode => _union.hashCode;
}