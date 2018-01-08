import 'package:sealed_unions/functions/func_consumer.dart';
import 'package:sealed_unions/functions/func_function.dart';
import 'package:sealed_unions/union_7.dart';

class Union7Fifth<A, B, C, D, E, F, G> implements Union7<A, B, C, D, E, F, G> {
  final E _value;

  Union7Fifth(this._value);

  @override
  void continued(
    Consumer<A> continuationFirst,
    Consumer<B> continuationSecond,
    Consumer<C> continuationThird,
    Consumer<D> continuationFourth,
    Consumer<E> continuationFifth,
    Consumer<F> continuationSixth,
    Consumer<G> continuationSeventh,
  ) {
    continuationFifth(_value);
  }

  @override
  R join<R>(
    Func1<R, A> mapFirst,
    Func1<R, B> mapSecond,
    Func1<R, C> mapThird,
    Func1<R, D> mapFourth,
    Func1<R, E> mapFifth,
    Func1<R, F> mapSixth,
    Func1<R, G> mapSeventh,
  ) {
    return mapFifth(_value);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Union7Fifth &&
          runtimeType == other.runtimeType &&
          _value == other._value;

  @override
  int get hashCode => _value.hashCode;

  @override
  String toString() => _value.toString();
}
