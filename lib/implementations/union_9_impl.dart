import 'package:func/func.dart';
import 'package:sealed_unions/union_9.dart';

class Union9Impl<A, B, C, D, E, F, G, H, I>
    implements Union9<A, B, C, D, E, F, G, H, I> {
  final Union9<A, B, C, D, E, F, G, H, I> _union;

  Union9Impl(Union9<A, B, C, D, E, F, G, H, I> union) : _union = union;

  @override
  void continued(VoidFunc1<A> continuationFirst,
      VoidFunc1<B> continuationSecond, VoidFunc1<C> continuationThird,
      VoidFunc1<D> continuationFourth, VoidFunc1<E> continuationFifth,
      VoidFunc1<F> continuationSixth, VoidFunc1<G> continuationSeventh,
      VoidFunc1<H> continuationEighth, VoidFunc1<I> continuationNinth) {
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
  R join<R>(Func1<A, R> mapFirst, Func1<B, R> mapSecond, Func1<C, R> mapThird,
      Func1<D, R> mapFourth, Func1<E, R> mapFifth, Func1<F, R> mapSixth,
      Func1<G, R> mapSeventh, Func1<H, R> mapEighth, Func1<I, R> mapNinth) {
    return _union.join(
        mapFirst,
        mapSecond,
        mapThird,
        mapFourth,
        mapFifth,
        mapSixth,
        mapSeventh,
        mapEighth,
        mapNinth);
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