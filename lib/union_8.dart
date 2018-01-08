
import 'package:func/func.dart';

abstract class Union8<First, Second, Third, Fourth, Fifth, Sixth, Seventh, Eighth> {
  void continued(VoidFunc1<First> continuationFirst, VoidFunc1<Second> continuationSecond,
      VoidFunc1<Third> continuationThird, VoidFunc1<Fourth> continuationFourth,
      VoidFunc1<Fifth> continuationFifth, VoidFunc1<Sixth> continuationSixth,
      VoidFunc1<Seventh> continuationSeventh, VoidFunc1<Eighth> continuationEighth);

  R join<R>(Func1<First, R> mapFirst, Func1<Second, R> mapSecond,
      Func1<Third, R> mapThird, Func1<Fourth, R> mapFourth, Func1<Fifth, R> mapFifth,
      Func1<Sixth, R> mapSixth, Func1<Seventh, R> mapSeventh,
      Func1<Eighth, R> mapEighth);
}