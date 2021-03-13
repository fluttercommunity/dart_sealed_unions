import 'package:sealed_unions/union_6.dart';

class Union6Impl<A, B, C, D, E, F> implements Union6<A, B, C, D, E, F> {
  final Union6<A, B, C, D, E, F> _union;

  Union6Impl(Union6<A, B, C, D, E, F> union) : _union = union;

  @override
  void continued(
    Function(A) continuationFirst,
    Function(B) continuationSecond,
    Function(C) continuationThird,
    Function(D) continuationFourth,
    Function(E) continuationFifth,
    Function(F) continuationSixth,
  ) {
    _union.continued(
      continuationFirst,
      continuationSecond,
      continuationThird,
      continuationFourth,
      continuationFifth,
      continuationSixth,
    );
  }

  @override
  R join<R>(
    R Function(A) mapFirst,
    R Function(B) mapSecond,
    R Function(C) mapThird,
    R Function(D) mapFourth,
    R Function(E) mapFifth,
    R Function(F) mapSixth,
  ) {
    return _union.join(
      mapFirst,
      mapSecond,
      mapThird,
      mapFourth,
      mapFifth,
      mapSixth,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Union6Impl && runtimeType == other.runtimeType && _union == other._union;

  @override
  int get hashCode => _union.hashCode;
}
