import 'package:func/func.dart';

abstract class Union4<First, Second, Third, Fourth> {
  void continued(
    VoidFunc1<First> continuationFirst,
    VoidFunc1<Second> continuationSecond,
    VoidFunc1<Third> continuationThird,
    VoidFunc1<Fourth> continuationFourth,
  );

  R join<R>(
    Func1<First, R> mapFirst,
    Func1<Second, R> mapSecond,
    Func1<Third, R> mapThird,
    Func1<Fourth, R> mapFourth,
  );
}
