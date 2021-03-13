abstract class Union7<First, Second, Third, Fourth, Fifth, Sixth, Seventh> {
  void continued(
    Function(First) continuationFirst,
    Function(Second) continuationSecond,
    Function(Third) continuationThird,
    Function(Fourth) continuationFourth,
    Function(Fifth) continuationFifth,
    Function(Sixth) continuationSixth,
    Function(Seventh) continuationSeventh,
  );

  R join<R>(
    R Function(First) mapFirst,
    R Function(Second) mapSecond,
    R Function(Third) mapThird,
    R Function(Fourth) mapFourth,
    R Function(Fifth) mapFifth,
    R Function(Sixth) mapSixth,
    R Function(Seventh) mapSeventh,
  );
}
