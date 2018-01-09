import 'package:sealed_unions/generic/union_2_first.dart';
import 'package:sealed_unions/generic/union_2_second.dart';
import 'package:sealed_unions/union_2.dart';

// Creator class for Union2
abstract class Factory2<T, U> {

  Union2<T, U> first(T first);

  Union2<T, U> second(U second);

}

class Doublet<T, U> implements Factory2<T, U> {

  const Doublet();

  @override
  Union2<T, U> first(T first) => new Union2First<T, U>(first);

  @override
  Union2<T, U> second(U second) => new Union2Second<T, U>(second);

}
