import 'package:sealed_unions/union_1.dart';

class Union1None<T> implements Union1<T> {
  Union1None();

  @override
  void continued(Function(T) continuationFirst, Function() continuationNone) {
    continuationNone();
  }

  @override
  R join<R>(R Function(T) mapFirst, R Function() mapNone) => mapNone();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Union1None && runtimeType == other.runtimeType;

  @override
  int get hashCode => 0;

  @override
  String toString() => "None()";
}
