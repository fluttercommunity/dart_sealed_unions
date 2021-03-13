import 'package:sealed_unions/generic/union_3_first.dart';
import 'package:sealed_unions/generic/union_3_second.dart';
import 'package:sealed_unions/generic/union_3_third.dart';
import 'package:sealed_unions/union_3.dart';

// Creator class for Union3
abstract class Factory3<T, U, V> {
  Union3<T, U, V> first(T first);

  Union3<T, U, V> second(U second);

  Union3<T, U, V> third(V third);
}

class Triplet<T, U, V> implements Factory3<T, U, V> {
  const Triplet();

  @override
  Union3<T, U, V> first(T first) => Union3First<T, U, V>(first);

  @override
  Union3<T, U, V> second(U second) => Union3Second<T, U, V>(second);

  @override
  Union3<T, U, V> third(V third) => Union3Third<T, U, V>(third);
}
