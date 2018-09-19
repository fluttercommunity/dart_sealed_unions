import 'package:sealed_unions/generic/union_1_first.dart';
import 'package:sealed_unions/generic/union_1_none.dart';
import 'package:sealed_unions/union_1.dart';

// Creator class for Union1
abstract class Factory1<Result> {
  /// Creates a Union0 wrapping a value
  /// @param single the value
  /// @return a Union0 object wrapping the value
  Union1<Result> first(Result result);

  /// Creates a Union1 wrapping no value
  /// @return a Union1 object wrapping no value
  Union1<Result> none();
}

class Singlet<Result> implements Factory1<Result> {
  const Singlet();

  @override
  Union1<Result> first(Result result) => new Union1First<Result>(result);

  @override
  Union1<Result> none() => new Union1None<Result>();
}
