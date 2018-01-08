
import 'package:func/func.dart';
import 'package:sealed_unions/union_3.dart';

class Union3Second<T, U, V> implements Union3<T, U, V> {

  final U _value;

  Union3Second(this._value);

  @override
  void continued(VoidFunc1<T> continuationFirst, VoidFunc1<U> continuationSecond,
      VoidFunc1<V> continuationThird) {
    try {
      continuationSecond(_value);
    } on Exception catch (e) {
      rethrow;
    }
  }

  @override
  R join<R>(Func1<T, R> mapFirst, Func1<U, R> mapSecond, Func1<V, R> mapThird) {
    try {
      return mapSecond(_value);
    } on Exception catch (e) {
      rethrow;
    }
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Union3Second &&
              runtimeType == other.runtimeType &&
              _value == other._value;

  @override
  int get hashCode => _value.hashCode;

  @override
  String toString() => _value.toString();

}