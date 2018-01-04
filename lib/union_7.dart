import 'functions/func_consumer.dart';
import 'functions/func_function.dart';

abstract class Union7<First, Second, Third, Fourth, Fifth, Sixth, Seventh> {
  void continued(Consumer<First> continuationFirst, Consumer<Second> continuationSecond,
      Consumer<Third> continuationThird, Consumer<Fourth> continuationFourth,
      Consumer<Fifth> continuationFifth, Consumer<Sixth> continuationSixth,
      Consumer<Seventh> continuationSeventh);

  R join<R>(Func1<R, First> mapFirst, Func1<R, Second> mapSecond,
      Func1<R, Third> mapThird, Func1<R, Fourth> mapFourth, Func1<R, Fifth> mapFifth,
      Func1<R, Sixth> mapSixth, Func1<R, Seventh> mapSeventh);
}