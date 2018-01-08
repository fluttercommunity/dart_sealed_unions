import 'package:func/func.dart';
import 'package:sealed_unions/union_1.dart';

class Union1None<T> implements Union1<T> {
  Union1None();

  @override
  void continued(VoidFunc1<T> continuationFirst, VoidFunc0 continuationNone) {
    continuationNone();
  }

  @override
  R join<R>(Func1<T, R> mapFirst, Func0<R> mapNone) => mapNone();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Union1None && runtimeType == other.runtimeType;

  @override
  int get hashCode => 0;

  @override
  String toString() => "None()";
}
