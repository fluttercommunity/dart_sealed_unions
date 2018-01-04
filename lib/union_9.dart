import 'functions/func_consumer.dart';
import 'functions/func_function.dart';

abstract class Union9<First, Second, Third, Fourth, Fifth, Sixth, Seventh, Eighth, Ninth> {
  void continued(Consumer<First> continuationFirst, Consumer<Second> continuationSecond,
      Consumer<Third> continuationThird, Consumer<Fourth> continuationFourth,
      Consumer<Fifth> continuationFifth, Consumer<Sixth> continuationSixth,
      Consumer<Seventh> continuationSeventh, Consumer<Eighth> continuationEighth,
      Consumer<Ninth> continuationNinth);

  R join<R>(Func1<R, First> mapFirst, Func1<R, Second> mapSecond,
      Func1<R, Third> mapThird, Func1<R, Fourth> mapFourth, Func1<R, Fifth> mapFifth,
      Func1<R, Sixth> mapSixth, Func1<R, Seventh> mapSeventh,
      Func1<R, Eighth> mapEighth, Func1<R, Ninth> mapNinth);
}