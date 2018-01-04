import 'package:dart_sealed_unions/generic/union_3_first.dart';
import 'package:dart_sealed_unions/generic/union_3_second.dart';
import 'package:dart_sealed_unions/generic/union_3_third.dart';
import 'package:dart_sealed_unions/union_3.dart';

// Creator class for Union3
abstract class Factory3<T, U, V> {

  Union3<T, U, V> first(T first);

  Union3<T, U, V> second(U second);

  Union3<T, U, V> third(V third);

}

class Triplet<T, U, V> implements Factory3 {

  const Triplet();

  @override
  Union3<T, U, V> first(first) => new Union3First<T, U, V>(first);

  @override
  Union3<T, U, V> second(second) => new Union3Second<T, U, V>(second);

  @override
  Union3<T, U, V> third(third) => new Union3Third<T, U, V>(third);

}