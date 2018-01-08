import 'package:sealed_unions/union_0.dart';

import 'package:func/func.dart';

class Union0First<T> implements Union0<T> {

  final T _value;

  Union0First(this._value);

  @override
  void continued(VoidFunc1<T> continuationFirst) {
    try {
      continuationFirst(_value);
    } on Exception catch (e) {
      rethrow;
    }
  }

  @override
  R join<R>(Func1<T, R> mapFirst) {
    try {
      return mapFirst(_value);
    } on Exception catch (e) {
      rethrow;
    }
  }

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