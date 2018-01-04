import 'functions/func_consumer.dart';
import 'functions/func_function.dart';
///
/// Union1 represents a union containing an element of 1 possible type
///
/// @param <First> The type represented by this union
///
abstract class Union0<First>{

  /// Executes one of the continuations depending on the element type
  void continued(Consumer<First> continuationFirst);

  /// Transforms the element in the union to a new type
  ///
  /// @param <R> result type
  /// @return an object of the result type
  R join<R>(Func1<R, First> mapFirst);

}


