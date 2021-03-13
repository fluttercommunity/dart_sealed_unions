import 'package:sealed_unions/union_4.dart';

class Union4Impl<A, B, C, D> implements Union4<A, B, C, D> {
  final Union4<A, B, C, D> _union;

  Union4Impl(Union4<A, B, C, D> union) : _union = union;

  @override
  void continued(
    Function(A) continuationFirst,
    Function(B) continuationSecond,
    Function(C) continuationThird,
    Function(D) continuationFourth,
  ) {
    _union.continued(
      continuationFirst,
      continuationSecond,
      continuationThird,
      continuationFourth,
    );
  }

  @override
  R join<R>(
    R Function(A) mapFirst,
    R Function(B) mapSecond,
    R Function(C) mapThird,
    R Function(D) mapFourth,
  ) {
    return _union.join(
      mapFirst,
      mapSecond,
      mapThird,
      mapFourth,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Union4Impl && runtimeType == other.runtimeType && _union == other._union;

  @override
  int get hashCode => _union.hashCode;
}
