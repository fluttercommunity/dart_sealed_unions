import 'package:dart_sealed_unions/functions/func_consumer.dart';
import 'package:dart_sealed_unions/functions/func_function.dart';
import 'package:dart_sealed_unions/union_4.dart';

class Union4Fourth<A, B, C, D> implements Union4<A, B, C, D> {

  final D _value;

  Union4Fourth(this._value);

  @override
  void continued(Consumer<A> continuationFirst, Consumer<B> continuationSecond,
      Consumer<C> continuationThird, Consumer<D> continuationFourth) {
    try {
      continuationFourth(_value);
    } on Exception catch (e) {
      rethrow;
    }
  }

  @override
  R join<R>(Func1<R, A> mapFirst, Func1<R, B> mapSecond, Func1<R, C> mapThird,
      Func1<R, D> mapFourth) {
    try {
      return mapFourth(_value);
    } on Exception catch (e) {
      rethrow;
    }
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Union4Fourth &&
              runtimeType == other.runtimeType &&
              _value == other._value;

  @override
  int get hashCode => _value.hashCode;

  @override
  String toString() => _value.toString();

}