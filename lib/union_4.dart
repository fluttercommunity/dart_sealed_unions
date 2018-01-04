import 'functions/func_consumer.dart';
import 'functions/func_function.dart';

abstract class Union4<First, Second, Third, Fourth> {
  void continued(Consumer<First> continuationFirst, Consumer<Second> continuationSecond,
      Consumer<Third> continuationThird, Consumer<Fourth> continuationFourth);

  R join<R>(Func1<R, First> mapFirst, Func1<R, Second> mapSecond,
      Func1<R, Third> mapThird, Func1<R, Fourth> mapFourth);
}