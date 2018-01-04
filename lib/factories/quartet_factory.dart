import 'package:dart_sealed_unions/generic/union_4_first.dart';
import 'package:dart_sealed_unions/generic/union_4_fourth.dart';
import 'package:dart_sealed_unions/generic/union_4_second.dart';
import 'package:dart_sealed_unions/generic/union_4_third.dart';
import 'package:dart_sealed_unions/union_4.dart';

// Creator class for Union4
abstract class Factory4<A, B, C, D> {

  Union4<A, B, C, D> first(A first);

  Union4<A, B, C, D> second(B second);

  Union4<A, B, C, D> third(C third);

  Union4<A, B, C, D> fourth(D fourth);

}

class Quartet<A, B, C, D> implements Factory4 {

  const Quartet();

  @override
  Union4<A, B, C, D> first(first) => new Union4First<A, B, C, D>(first);

  @override
  Union4<A, B, C, D> second(second) => new Union4Second<A, B, C, D>(second);

  @override
  Union4<A, B, C, D> third(third) => new Union4Third<A, B, C, D>(third);

  @override
  Union4<A, B, C, D> fourth(fourth) => new Union4Fourth<A, B, C, D>(fourth);

}