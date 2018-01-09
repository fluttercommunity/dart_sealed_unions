import 'package:func/func.dart';
import 'package:sealed_unions/union_7.dart';

class Union7Second<A, B, C, D, E, F, G> implements Union7<A, B, C, D, E, F, G> {
  final B _value;

  Union7Second(this._value);

  @override
  void continued(
    VoidFunc1<A> continuationFirst,
    VoidFunc1<B> continuationSecond,
    VoidFunc1<C> continuationThird,
    VoidFunc1<D> continuationFourth,
    VoidFunc1<E> continuationFifth,
    VoidFunc1<F> continuationSixth,
    VoidFunc1<G> continuationSeventh,
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
  ) {
    return mapSecond(_value);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Union7Second &&
          runtimeType == other.runtimeType &&
          _value == other._value;

  @override
  int get hashCode => _value.hashCode;

  @override
  String toString() => _value.toString();
}
