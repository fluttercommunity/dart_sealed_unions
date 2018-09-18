abstract class Union5<First, Second, Third, Fourth, Fifth> {
  void continued(
    Function(First) continuationFirst,
    Function(Second) continuationSecond,
    Function(Third) continuationThird,
    Function(Fourth) continuationFourth,
    Function(Fifth) continuationFifth,
  );

  R join<R>(
    R Function(First) mapFirst,
    R Function(Second) mapSecond,
    R Function(Third) mapThird,
    R Function(Fourth) mapFourth,
    R Function(Fifth) mapFifth,
  );
}
