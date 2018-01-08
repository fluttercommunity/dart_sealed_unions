import 'package:sealed_unions/union_0.dart';
import 'package:sealed_unions/functions/func_consumer.dart';
import 'package:sealed_unions/functions/func_function.dart';

class Union0First<T> implements Union0<T> {

  final T _value;

  Union0First(this._value);

  @override
  void continued(Consumer<T> continuationFirst) {
    continuationFirst(_value);
  }

  @override
  R join<R>(Func1<R, T> mapFirst) => mapFirst(_value);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Union0First &&
              runtimeType == other.runtimeType &&
              _value == other._value;

  @override
  int get hashCode => _value.hashCode;

  @override
  String toString() => _value.toString();
}
