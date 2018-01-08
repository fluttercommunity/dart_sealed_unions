import 'package:func/func.dart';
import 'package:sealed_unions/union_8.dart';

class Union8Impl<A, B, C, D, E, F, G, H> implements Union8<A, B, C, D, E, F, G, H> {
  final Union8<A, B, C, D, E, F, G, H> _union;

  Union8Impl(Union8<A, B, C, D, E, F, G, H> union) : _union = union;

  @override
  void continued(VoidFunc1<A> continuationFirst,
      VoidFunc1<B> continuationSecond, VoidFunc1<C> continuationThird,
      VoidFunc1<D> continuationFourth, VoidFunc1<E> continuationFifth,
      VoidFunc1<F> continuationSixth, VoidFunc1<G> continuationSeventh,
      VoidFunc1<H> continuationEighth) {
    _union.continued(
        continuationFirst,
        continuationSecond,
        continuationThird,
        continuationFourth,
        continuationFifth,
        continuationSixth,
        continuationSeventh,
        continuationEighth);
  }

  @override
  R join<R>(Func1<A, R> mapFirst, Func1<B, R> mapSecond, Func1<C, R> mapThird,
      Func1<D, R> mapFourth, Func1<E, R> mapFifth, Func1<F, R> mapSixth,
      Func1<G, R> mapSeventh, Func1<H, R> mapEighth) {
    return _union.join(
        mapFirst,
        mapSecond,
        mapThird,
        mapFourth,
        mapFifth,
        mapSixth,
        mapSeventh,
        mapEighth);
  }


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Union8Impl &&
              runtimeType == other.runtimeType &&
              _union == other._union;

  @override
  int get hashCode => _union.hashCode;
}