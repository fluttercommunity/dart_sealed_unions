import 'functions/func_consumer.dart';
import 'functions/func_function.dart';

abstract class Union2<First, Second> {
  void continued(Consumer<First> continuationFirst,
      Consumer<Second> continuationSecond);

  R join<R>(Func1<R, First> mapFirst, Func1<R, Second> mapSecond);
}