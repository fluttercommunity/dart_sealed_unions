import 'package:sealed_unions/generic/union_9_eighth.dart';
import 'package:sealed_unions/generic/union_9_fifth.dart';
import 'package:sealed_unions/generic/union_9_first.dart';
import 'package:sealed_unions/generic/union_9_fourth.dart';
import 'package:sealed_unions/generic/union_9_ninth.dart';
import 'package:sealed_unions/generic/union_9_second.dart';
import 'package:sealed_unions/generic/union_9_seventh.dart';
import 'package:sealed_unions/generic/union_9_sixth.dart';
import 'package:sealed_unions/generic/union_9_third.dart';
import 'package:sealed_unions/union_9.dart';

// Creator class for Union9
abstract class Factory9<A, B, C, D, E, F, G, H, I> {
  Union9<A, B, C, D, E, F, G, H, I> first(A first);

  Union9<A, B, C, D, E, F, G, H, I> second(B second);

  Union9<A, B, C, D, E, F, G, H, I> third(C third);

  Union9<A, B, C, D, E, F, G, H, I> fourth(D fourth);

  Union9<A, B, C, D, E, F, G, H, I> fifth(E fifth);

  Union9<A, B, C, D, E, F, G, H, I> sixth(F sixth);

  Union9<A, B, C, D, E, F, G, H, I> seventh(G seventh);

  Union9<A, B, C, D, E, F, G, H, I> eighth(H eighth);

  Union9<A, B, C, D, E, F, G, H, I> ninth(I ninth);
}

class Nonet<A, B, C, D, E, F, G, H, I>
    implements Factory9<A, B, C, D, E, F, G, H, I> {
  const Nonet();

  @override
  Union9<A, B, C, D, E, F, G, H, I> first(A first) =>
      new Union9First<A, B, C, D, E, F, G, H, I>(first);

  @override
  Union9<A, B, C, D, E, F, G, H, I> second(B second) =>
      new Union9Second<A, B, C, D, E, F, G, H, I>(second);

  @override
  Union9<A, B, C, D, E, F, G, H, I> third(C third) =>
      new Union9Third<A, B, C, D, E, F, G, H, I>(third);

  @override
  Union9<A, B, C, D, E, F, G, H, I> fourth(D fourth) =>
      new Union9Fourth<A, B, C, D, E, F, G, H, I>(fourth);

  @override
  Union9<A, B, C, D, E, F, G, H, I> fifth(E fifth) =>
      new Union9Fifth<A, B, C, D, E, F, G, H, I>(fifth);

  @override
  Union9<A, B, C, D, E, F, G, H, I> sixth(F sixth) =>
      new Union9Sixth<A, B, C, D, E, F, G, H, I>(sixth);

  @override
  Union9<A, B, C, D, E, F, G, H, I> seventh(G seventh) =>
      new Union9Seventh<A, B, C, D, E, F, G, H, I>(seventh);

  @override
  Union9<A, B, C, D, E, F, G, H, I> eighth(H eighth) =>
      new Union9Eighth<A, B, C, D, E, F, G, H, I>(eighth);

  @override
  Union9<A, B, C, D, E, F, G, H, I> ninth(I ninth) =>
      new Union9Ninth<A, B, C, D, E, F, G, H, I>(ninth);
}
