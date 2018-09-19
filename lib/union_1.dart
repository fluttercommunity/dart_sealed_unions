abstract class Union1<First> {
  void continued(
    Function(First) continuationFirst,
    Function() continuationNone,
  );

  R join<R>(R Function(First) mapFirst, R Function() mapNone);
}
