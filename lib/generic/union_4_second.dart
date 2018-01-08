import 'package:sealed_unions/functions/func_consumer.dart';
import 'package:sealed_unions/functions/func_function.dart';
import 'package:sealed_unions/union_4.dart';

class Union4Second<A, B, C, D> implements Union4<A, B, C, D> {
  final B _value;

  Union4Second(this._value);

  @override
  void continued(
    Consumer<A> continuationFirst,
    Consumer<B> continuationSecond,
    Consumer<C> continuationThird,
    Consumer<D> continuationFourth,
  ) {
    continuationSecond(_value);
  }

  @override
  R join<R>(
    Func1<R, A> mapFirst,
    Func1<R, B> mapSecond,
    Func1<R, C> mapThird,
    Func1<R, D> mapFourth,
  ) {
    return mapSecond(_value);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Union4Second &&
          runtimeType == other.runtimeType &&
          _value == other._value;

  @override
  int get hashCode => _value.hashCode;

  @override
  String toString() => _value.toString();
}
