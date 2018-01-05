import 'package:sealed_unions/functions/func_consumer.dart';
import 'package:sealed_unions/functions/func_function.dart';
import 'package:sealed_unions/union_2.dart';

class Union2Second<T, U> implements Union2<T, U> {

  final U _value;

  Union2Second(this._value);

  @override
  void continued(Consumer<T> continuationFirst,
      Consumer<U> continuationSecond) {
    try {
      continuationSecond(_value);
    } on Exception catch (e) {
      rethrow;
    }
  }

  @override
  R join<R>(Func1<R, T> mapFirst, Func1<R, U> mapSecond) {
    try {
      return mapSecond(_value);
    } on Exception catch (e) {
      rethrow;
    }
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Union2Second &&
              runtimeType == other.runtimeType &&
              _value == other._value;

  @override
  int get hashCode => _value.hashCode;

  @override
  String toString() => _value.toString();

}