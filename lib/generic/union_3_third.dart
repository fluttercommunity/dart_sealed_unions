import 'package:dart_sealed_unions/functions/func_consumer.dart';
import 'package:dart_sealed_unions/functions/func_function.dart';
import 'package:dart_sealed_unions/union_3.dart';

class Union3Third<T, U, V> implements Union3<T, U, V> {

  final V _value;

  Union3Third(this._value);

  @override
  void continued(Consumer<T> continuationFirst, Consumer<U> continuationSecond,
      Consumer<V> continuationThird) {
    try {
      continuationThird(_value);
    } on Exception catch (e) {
      rethrow;
    }
  }

  @override
  R join<R>(Func1<R, T> mapFirst, Func1<R, U> mapSecond, Func1<R, V> mapThird) {
    try {
      return mapThird(_value);
    } on Exception catch (e) {
      rethrow;
    }
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Union3Third &&
              runtimeType == other.runtimeType &&
              _value == other._value;

  @override
  int get hashCode => _value.hashCode;

  @override
  String toString() => _value.toString();

}