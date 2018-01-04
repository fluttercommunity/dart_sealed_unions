import 'functions/func_consumer.dart';
import 'functions/func_function.dart';

abstract class Union5<First, Second, Third, Fourth, Fifth> {
  void continued(Consumer<First> continuationFirst, Consumer<Second> continuationSecond,
      Consumer<Third> continuationThird, Consumer<Fourth> continuationFourth,
      Consumer<Fifth> continuationFifth);

  R join<R>(Func1<R, First> mapFirst, Func1<R, Second> mapSecond,
      Func1<R, Third> mapThird, Func1<R, Fourth> mapFourth,
      Func1<R, Fifth> mapFifth);
}