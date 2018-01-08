import 'package:func/func.dart';
import 'package:sealed_unions/union_8.dart';

class Union8First<A, B, C, D, E, F, G, H>
    implements Union8<A, B, C, D, E, F, G, H> {
  final A _value;

  Union8First(this._value);

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
  ) {
    continuationFirst(_value);
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
  ) {
    return mapFirst(_value);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Union8First &&
          runtimeType == other.runtimeType &&
          _value == other._value;

  @override
  int get hashCode => _value.hashCode;

  @override
  String toString() => _value.toString();
}
