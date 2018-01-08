import 'package:sealed_unions/functions/func_consumer.dart';
import 'package:sealed_unions/functions/func_function.dart';
import 'package:sealed_unions/union_3.dart';

class Union3First<T, U, V> implements Union3<T, U, V> {
  final T _value;

  Union3First(this._value);

  @override
  void continued(
    Consumer<T> continuationFirst,
    Consumer<U> continuationSecond,
    Consumer<V> continuationThird,
  ) {
    continuationFirst(_value);
  }

  @override
  R join<R>(Func1<R, T> mapFirst, Func1<R, U> mapSecond, Func1<R, V> mapThird) {
    return mapFirst(_value);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Union3First &&
          runtimeType == other.runtimeType &&
          _value == other._value;

  @override
  int get hashCode => _value.hashCode;

  @override
  String toString() => _value.toString();
}
