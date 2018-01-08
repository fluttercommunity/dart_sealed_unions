import 'package:sealed_unions/generic/union_6_fifth.dart';
import 'package:sealed_unions/generic/union_6_first.dart';
import 'package:sealed_unions/generic/union_6_fourth.dart';
import 'package:sealed_unions/generic/union_6_second.dart';
import 'package:sealed_unions/generic/union_6_sixth.dart';
import 'package:sealed_unions/generic/union_6_third.dart';
import 'package:sealed_unions/union_6.dart';

// Creator class for Union6
abstract class Factory6<A, B, C, D, E, F> {

  Union6<A, B, C, D, E, F> first(A first);

  Union6<A, B, C, D, E, F> second(B second);

  Union6<A, B, C, D, E, F> third(C third);

  Union6<A, B, C, D, E, F> fourth(D fourth);

  Union6<A, B, C, D, E, F> fifth(E fifth);

  Union6<A, B, C, D, E, F> sixth(F sixth);

}

class Sextet<A, B, C, D, E, F> implements Factory6<A, B, C, D, E, F> {

  Sextet();

  @override
  Union6<A, B, C, D, E, F> first(first) =>
      new Union6First<A, B, C, D, E, F>(first);

  @override
  Union6<A, B, C, D, E, F> second(second) =>
      new Union6Second<A, B, C, D, E, F>(second);

  @override
  Union6<A, B, C, D, E, F> third(third) =>
      new Union6Third<A, B, C, D, E, F>(third);

  @override
  Union6<A, B, C, D, E, F> fourth(fourth) =>
      new Union6Fourth<A, B, C, D, E, F>(fourth);

  @override
  Union6<A, B, C, D, E, F> fifth(fifth) =>
      new Union6Fifth<A, B, C, D, E, F>(fifth);

  @override
  Union6<A, B, C, D, E, F> sixth(sixth) =>
      new Union6Sixth<A, B, C, D, E, F>(sixth);

}
