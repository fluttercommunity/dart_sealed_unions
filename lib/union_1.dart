import 'package:func/func.dart';


abstract class Union1<First> {
  void continued(VoidFunc1<First> continuationFirst, VoidFunc0 continuationNone);

  R join<R>(Func1<First, R> mapFirst, Func0<R> mapNone);
}