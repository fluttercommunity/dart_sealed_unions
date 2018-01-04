import 'functions/func_consumer.dart';
import 'functions/func_function.dart';

abstract class Union3<First, Second, Third> {
   void continued(Consumer<First> continuationFirst, Consumer<Second> continuationSecond,
      Consumer<Third> continuationThird);

  R join<R>(Func1<R, First> mapFirst, Func1<R, Second> mapSecond,
      Func1<R, Third> mapThird);
}