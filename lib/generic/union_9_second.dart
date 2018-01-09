
import 'package:func/func.dart';
import 'package:sealed_unions/union_9.dart';

class Union9Second<A, B, C, D, E, F, G, H, I>
    implements Union9<A, B, C, D, E, F, G, H, I> {
  final B _value;

  Union9Second(this._value);

  @override
  void continued(
    VoidFunc1<A> continuationFirst,
    VoidFunc1<B> continuationSecond,
    VoidFunc1<C> continuationThird,
    VoidFunc1<D> continuationFourth,
    VoidFunc1<E> continuationFifth,
    VoidFunc1<F> continuationSixth,
    VoidFunc1<G> continuationSeventh,
    VoidFunc1<H> continuationEighth,
    VoidFunc1<I> continuationNinth,
  ) {
    continuationSecond(_value);
  }

  @override
  R join<R>(
    Func1<A, R> mapFirst,
    Func1<B, R> mapSecond,
    Func1<C, R> mapThird,
    Func1<D, R> mapFourth,
    Func1<E, R> mapFifth,
    Func1<F, R> mapSixth,
    Func1<G, R> mapSeventh,
    Func1<H, R> mapEighth,
    Func1<I, R> mapNinth,
  ) {
    return mapSecond(_value);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Union9Second &&
          runtimeType == other.runtimeType &&
          _value == other._value;

  @override
  int get hashCode => _value.hashCode;

  @override
  String toString() => _value.toString();
}
