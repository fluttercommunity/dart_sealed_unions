abstract class Union2<First, Second> {
  void continued(
    Function(First) continuationFirst,
    Function(Second) continuationSecond,
  );

  R join<R>(R Function(First) mapFirst, R Function(Second) mapSecond);
}
