import 'package:sealed_unions/generic/union_8_eighth.dart';
import 'package:sealed_unions/generic/union_8_fifth.dart';
import 'package:sealed_unions/generic/union_8_first.dart';
import 'package:sealed_unions/generic/union_8_fourth.dart';
import 'package:sealed_unions/generic/union_8_second.dart';
import 'package:sealed_unions/generic/union_8_seventh.dart';
import 'package:sealed_unions/generic/union_8_sixth.dart';
import 'package:sealed_unions/generic/union_8_third.dart';
import 'package:sealed_unions/union_8.dart';

// Creator class for Union8
abstract class Factory8<A, B, C, D, E, F, G, H> {
  Union8<A, B, C, D, E, F, G, H> first(A first);

  Union8<A, B, C, D, E, F, G, H> second(B second);

  Union8<A, B, C, D, E, F, G, H> third(C third);

  Union8<A, B, C, D, E, F, G, H> fourth(D fourth);

  Union8<A, B, C, D, E, F, G, H> fifth(E fifth);

  Union8<A, B, C, D, E, F, G, H> sixth(F sixth);

  Union8<A, B, C, D, E, F, G, H> seventh(G seventh);

  Union8<A, B, C, D, E, F, G, H> eighth(H eighth);
}

class Octet<A, B, C, D, E, F, G, H> implements Factory8<A, B, C, D, E, F, G, H> {
  const Octet();

  @override
  Union8<A, B, C, D, E, F, G, H> first(A first) => Union8First<A, B, C, D, E, F, G, H>(first);

  @override
  Union8<A, B, C, D, E, F, G, H> second(B second) => Union8Second<A, B, C, D, E, F, G, H>(second);

  @override
  Union8<A, B, C, D, E, F, G, H> third(C third) => Union8Third<A, B, C, D, E, F, G, H>(third);

  @override
  Union8<A, B, C, D, E, F, G, H> fourth(D fourth) => Union8Fourth<A, B, C, D, E, F, G, H>(fourth);

  @override
  Union8<A, B, C, D, E, F, G, H> fifth(E fifth) => Union8Fifth<A, B, C, D, E, F, G, H>(fifth);

  @override
  Union8<A, B, C, D, E, F, G, H> sixth(F sixth) => Union8Sixth<A, B, C, D, E, F, G, H>(sixth);

  @override
  Union8<A, B, C, D, E, F, G, H> seventh(G seventh) => Union8Seventh<A, B, C, D, E, F, G, H>(seventh);

  @override
  Union8<A, B, C, D, E, F, G, H> eighth(H eighth) => Union8Eighth<A, B, C, D, E, F, G, H>(eighth);
}
