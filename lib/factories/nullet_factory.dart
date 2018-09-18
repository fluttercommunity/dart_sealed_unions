import 'package:sealed_unions/generic/union_0_first.dart';
import 'package:sealed_unions/union_0.dart';

// Creator class for Union0
abstract class Factory0<Result> {
  /// Creates a Union0 wrapping a value
  ///
  /// @param single the value
  /// @return a Union0 object wrapping the value
  Union0<Result> first(Result result);
}

class Nullet<Result> implements Factory0<Result> {
  const Nullet();

  @override
  Union0<Result> first(Result result) => new Union0First<Result>(result);
}
