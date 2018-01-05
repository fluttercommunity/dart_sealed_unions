import 'package:sealed_unions/functions/func_action.dart';
import 'package:sealed_unions/functions/func_consumer.dart';
import 'package:sealed_unions/functions/func_function.dart';
import 'package:sealed_unions/union_1.dart';

class Union1None<T> implements Union1<T> {

  Union1None();

  @override
  void continued(Consumer<T> continuationFirst, Action continuationNone) {
    try {
      continuationNone();
    } on Exception catch (e) {
      rethrow;
    }
  }

  @override
  R join<R>(Func1<R, T> mapFirst, Func0<R> mapNone) {
    try {
      return mapNone();
    } on Exception catch (e) {
      rethrow;
    }
  }


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Union1None &&
              runtimeType == other.runtimeType;

  @override
  int get hashCode => 0;

  @override
  String toString() => "None()";

}
