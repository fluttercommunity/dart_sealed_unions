import 'package:sealed_unions/generic/union_7_fifth.dart';
import 'package:sealed_unions/generic/union_7_first.dart';
import 'package:sealed_unions/generic/union_7_fourth.dart';
import 'package:sealed_unions/generic/union_7_second.dart';
import 'package:sealed_unions/generic/union_7_seventh.dart';
import 'package:sealed_unions/generic/union_7_sixth.dart';
import 'package:sealed_unions/generic/union_7_third.dart';
import 'package:sealed_unions/union_7.dart';

// Creator class for Union7
abstract class Factory7<A, B, C, D, E, F, G> {
  Union7<A, B, C, D, E, F, G> first(A first);

  Union7<A, B, C, D, E, F, G> second(B second);

  Union7<A, B, C, D, E, F, G> third(C third);

  Union7<A, B, C, D, E, F, G> fourth(D fourth);

  Union7<A, B, C, D, E, F, G> fifth(E fifth);

  Union7<A, B, C, D, E, F, G> sixth(F sixth);

  Union7<A, B, C, D, E, F, G> seventh(G seventh);
}

class Septet<A, B, C, D, E, F, G> implements Factory7<A, B, C, D, E, F, G> {
  const Septet();

  @override
  Union7<A, B, C, D, E, F, G> first(A first) => Union7First<A, B, C, D, E, F, G>(first);

  @override
  Union7<A, B, C, D, E, F, G> second(B second) => Union7Second<A, B, C, D, E, F, G>(second);

  @override
  Union7<A, B, C, D, E, F, G> third(C third) => Union7Third<A, B, C, D, E, F, G>(third);

  @override
  Union7<A, B, C, D, E, F, G> fourth(D fourth) => Union7Fourth<A, B, C, D, E, F, G>(fourth);

  @override
  Union7<A, B, C, D, E, F, G> fifth(E fifth) => Union7Fifth<A, B, C, D, E, F, G>(fifth);

  @override
  Union7<A, B, C, D, E, F, G> sixth(F sixth) => Union7Sixth<A, B, C, D, E, F, G>(sixth);

  @override
  Union7<A, B, C, D, E, F, G> seventh(G seventh) => Union7Seventh<A, B, C, D, E, F, G>(seventh);
}
