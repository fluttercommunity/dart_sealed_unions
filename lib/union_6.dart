abstract class Union6<First, Second, Third, Fourth, Fifth, Sixth> {
  void continued(
    Function(First) continuationFirst,
    Function(Second) continuationSecond,
    Function(Third) continuationThird,
    Function(Fourth) continuationFourth,
    Function(Fifth) continuationFifth,
    Function(Sixth) continuationSixth,
  );

  R join<R>(
    R Function(First) mapFirst,
    R Function(Second) mapSecond,
    R Function(Third) mapThird,
    R Function(Fourth) mapFourth,
    R Function(Fifth) mapFifth,
    R Function(Sixth) mapSixth,
  );
}
