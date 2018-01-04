import 'functions/func_action.dart';
import 'functions/func_consumer.dart';
import 'functions/func_function.dart';

abstract class Union1<First> {
  void continued(Consumer<First> continuationFirst, Action continuationNone);

  R join<R>(Func1<R, First> mapFirst, Func0<R> mapNone);
}