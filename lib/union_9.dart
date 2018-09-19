abstract class Union9<First, Second, Third, Fourth, Fifth, Sixth, Seventh,
    Eighth, Ninth> {
  void continued(
    Function(First) continuationFirst,
    Function(Second) continuationSecond,
    Function(Third) continuationThird,
    Function(Fourth) continuationFourth,
    Function(Fifth) continuationFifth,
    Function(Sixth) continuationSixth,
    Function(Seventh) continuationSeventh,
    Function(Eighth) continuationEighth,
    Function(Ninth) continuationNinth,
  );

  R join<R>(
    R Function(First) mapFirst,
    R Function(Second) mapSecond,
    R Function(Third) mapThird,
    R Function(Fourth) mapFourth,
    R Function(Fifth) mapFifth,
    R Function(Sixth) mapSixth,
    R Function(Seventh) mapSeventh,
    R Function(Eighth) mapEighth,
    R Function(Ninth) mapNinth,
  );
}
