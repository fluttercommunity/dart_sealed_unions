import 'package:func/func.dart';

abstract class Union3<First, Second, Third> {
  void continued(
    VoidFunc1<First> continuationFirst,
    VoidFunc1<Second> continuationSecond,
    VoidFunc1<Third> continuationThird,
  );

  R join<R>(
    Func1<First, R> mapFirst,
    Func1<Second, R> mapSecond,
    Func1<Third, R> mapThird,
  );
}
