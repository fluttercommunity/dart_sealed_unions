import 'package:dart_sealed_unions/functions/func_consumer.dart';
import 'package:dart_sealed_unions/functions/func_function.dart';
import 'package:dart_sealed_unions/union_8.dart';

class Union8Fifth<A, B, C, D, E, F, G, H> implements Union8<A, B, C, D, E, F, G, H> {

  final E _value;

  Union8Fifth(this._value);

  @override
  void continued(Consumer<A> continuationFirst, Consumer<B> continuationSecond,
      Consumer<C> continuationThird, Consumer<D> continuationFourth,
      Consumer<E> continuationFifth, Consumer<F> continuationSixth,
      Consumer<G> continuationSeventh, Consumer<H> continuationEighth) {
    try {
      continuationFifth(_value);
    } on Exception catch (e) {
      rethrow;
    }
  }

  @override
  R join<R>(Func1<R, A> mapFirst, Func1<R, B> mapSecond, Func1<R, C> mapThird,
      Func1<R, D> mapFourth, Func1<R, E> mapFifth, Func1<R, F> mapSixth,
      Func1<R, G> mapSeventh, Func1<R, H> mapEighth) {
    try {
      return mapFifth(_value);
    } on Exception catch (e) {
      rethrow;
    }
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Union8Fifth &&
              runtimeType == other.runtimeType &&
              _value == other._value;

  @override
  int get hashCode => _value.hashCode;

  @override
  String toString() => _value.toString();

}