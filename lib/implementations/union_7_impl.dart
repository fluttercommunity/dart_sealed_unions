import 'package:func/func.dart';
import 'package:sealed_unions/union_7.dart';

class Union7Impl<A, B, C, D, E, F, G> implements Union7<A, B, C, D, E, F, G> {
  final Union7<A, B, C, D, E, F, G> _union;

  Union7Impl(Union7<A, B, C, D, E, F, G> union) : _union = union;

  @override
  void continued(VoidFunc1<A> continuationFirst,
      VoidFunc1<B> continuationSecond, VoidFunc1<C> continuationThird,
      VoidFunc1<D> continuationFourth, VoidFunc1<E> continuationFifth,
      VoidFunc1<F> continuationSixth, VoidFunc1<G> continuationSeventh) {
    _union.continued(
        continuationFirst,
        continuationSecond,
        continuationThird,
        continuationFourth,
        continuationFifth,
        continuationSixth,
        continuationSeventh);
  }

  @override
  R join<R>(Func1<A, R> mapFirst, Func1<B, R> mapSecond, Func1<C, R> mapThird,
      Func1<D, R> mapFourth, Func1<E, R> mapFifth, Func1<F, R> mapSixth,
      Func1<G, R> mapSeventh) {
    return _union.join(
        mapFirst,
        mapSecond,
        mapThird,
        mapFourth,
        mapFifth,
        mapSixth,
        mapSeventh);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Union7Impl &&
              runtimeType == other.runtimeType &&
              _union == other._union;

  @override
  int get hashCode => _union.hashCode;
}