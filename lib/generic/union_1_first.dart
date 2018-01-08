import 'package:sealed_unions/functions/func_action.dart';
import 'package:sealed_unions/functions/func_consumer.dart';
import 'package:sealed_unions/functions/func_function.dart';
import 'package:sealed_unions/union_1.dart';

class Union1First<T> implements Union1<T> {
  final T _value;

  Union1First(this._value);

  @override
  void continued(Consumer<T> continuationFirst, Action continuationNone) {
    continuationFirst(_value);
  }

  @override
  R join<R>(Func1<R, T> mapFirst, Func0<R> mapNone) => mapFirst(_value);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Union1First &&
          runtimeType == other.runtimeType &&
          _value == other._value;

  @override
  int get hashCode => _value.hashCode;

  @override
  String toString() => _value.toString();
}
