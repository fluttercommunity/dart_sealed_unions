import 'package:func/func.dart';
import 'package:sealed_unions/union_1.dart';

class Union1Impl<A> implements Union1<A> {
  final Union1<A> _union;

  Union1Impl(Union1<A> union) : _union = union;

  @override
  void continued(VoidFunc1<A> continuationFirst, VoidFunc0 continuationNone) {
    _union.continued(continuationFirst, continuationNone);
  }

  @override
  R join<R>(Func1<A, R> mapFirst, Func0<R> mapNone) {
    return _union.join(mapFirst, mapNone);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Union1Impl &&
              runtimeType == other.runtimeType &&
              _union == other._union;

  @override
  int get hashCode => _union.hashCode;
}