import 'package:func/func.dart';

abstract class Union2<First, Second> {
  void continued(
    VoidFunc1<First> continuationFirst,
    VoidFunc1<Second> continuationSecond,
  );

  R join<R>(Func1<First, R> mapFirst, Func1<Second, R> mapSecond);
}
