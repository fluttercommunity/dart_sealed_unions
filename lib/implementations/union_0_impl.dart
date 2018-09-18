import 'package:sealed_unions/union_0.dart';

class Union0Impl<A> implements Union0<A> {
  final Union0<A> _union;

  Union0Impl(Union0<A> union) : _union = union;

  @override
  void continued(Function(A) continuationFirst) {
    _union.continued(continuationFirst);
  }

  @override
  R join<R>(R Function(A) mapFirst) {
    return _union.join(mapFirst);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Union0Impl &&
          runtimeType == other.runtimeType &&
          _union == other._union;

  @override
  int get hashCode => _union.hashCode;
}
