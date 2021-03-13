import 'package:sealed_unions/union_1.dart';

class Union1First<T> implements Union1<T> {
  final T _value;

  Union1First(this._value);

  @override
  void continued(Function(T) continuationFirst, Function() continuationNone) {
    continuationFirst(_value);
  }

  @override
  R join<R>(R Function(T) mapFirst, R Function() mapNone) => mapFirst(_value);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Union1First && runtimeType == other.runtimeType && _value == other._value;

  @override
  int get hashCode => _value.hashCode;

  @override
  String toString() => _value.toString();
}
