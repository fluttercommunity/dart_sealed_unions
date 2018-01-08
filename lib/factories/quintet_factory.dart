import 'package:sealed_unions/generic/union_5_fifth.dart';
import 'package:sealed_unions/generic/union_5_first.dart';
import 'package:sealed_unions/generic/union_5_fourth.dart';
import 'package:sealed_unions/generic/union_5_second.dart';
import 'package:sealed_unions/generic/union_5_third.dart';
import 'package:sealed_unions/union_5.dart';

// Creator class for Union5
abstract class Factory5<A, B, C, D, E> {

  Union5<A, B, C, D, E> first(A first);

  Union5<A, B, C, D, E> second(B second);

  Union5<A, B, C, D, E> third(C third);

  Union5<A, B, C, D, E> fourth(D fourth);

  Union5<A, B, C, D, E> fifth(E fifth);

}

class Quintet<A, B, C, D, E> implements Factory5<A, B, C, D, E> {

  const Quintet();

  @override
  Union5<A, B, C, D, E> first(A first) => new Union5First<A, B, C, D, E>(first);

  @override
  Union5<A, B, C, D, E> second(B second) =>
      new Union5Second<A, B, C, D, E>(second);

  @override
  Union5<A, B, C, D, E> third(C third) => new Union5Third<A, B, C, D, E>(third);

  @override
  Union5<A, B, C, D, E> fourth(D fourth) =>
      new Union5Fourth<A, B, C, D, E>(fourth);

  @override
  Union5<A, B, C, D, E> fifth(E fifth) => new Union5Fifth<A, B, C, D, E>(fifth);

}
