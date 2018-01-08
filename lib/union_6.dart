
import 'package:func/func.dart';

abstract class Union6<First, Second, Third, Fourth, Fifth, Sixth> {
  void continued(VoidFunc1<First> continuationFirst, VoidFunc1<Second> continuationSecond,
      VoidFunc1<Third> continuationThird, VoidFunc1<Fourth> continuationFourth,
      VoidFunc1<Fifth> continuationFifth, VoidFunc1<Sixth> continuationSixth);

  R join<R>(Func1<First, R> mapFirst, Func1<Second, R> mapSecond,
      Func1<Third, R> mapThird, Func1<Fourth, R> mapFourth, Func1<Fifth, R> mapFifth,
      Func1<Sixth, R> mapSixth);
}