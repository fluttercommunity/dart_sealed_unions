
import 'package:func/func.dart';
import 'package:sealed_unions/union_1.dart';

class Union1First<T> implements Union1<T> {

  final T _value;

  Union1First(this._value);

  @override
  void continued(VoidFunc1<T> continuationFirst, VoidFunc0 continuationNone) {
    try {
      continuationFirst(_value);
    } on Exception catch (e) {
      rethrow;
    }
  }

  @override
  R join<R>(Func1<T, R> mapFirst, Func0<R> mapNone) {
    try {
      return mapFirst(_value);
    } on Exception catch (e) {
      rethrow;
    }
  }

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