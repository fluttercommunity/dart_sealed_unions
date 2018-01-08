
import 'package:func/func.dart';
import 'package:sealed_unions/union_5.dart';

class Union5Fourth<A, B, C, D, E> implements Union5<A, B, C, D, E> {

  final D _value;

  Union5Fourth(this._value);

  @override
  void continued(VoidFunc1<A> continuationFirst, VoidFunc1<B> continuationSecond,
      VoidFunc1<C> continuationThird, VoidFunc1<D> continuationFourth,
      VoidFunc1<E> continuationFifth) {
    try {
      continuationFourth(_value);
    } on Exception catch (e) {
      rethrow;
    }
  }

  @override
  R join<R>(Func1<A, R> mapFirst, Func1<B, R> mapSecond, Func1<C, R> mapThird,
      Func1<D, R> mapFourth, Func1<E, R> mapFifth) {
    try {
      return mapFourth(_value);
    } on Exception catch (e) {
      rethrow;
    }
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Union5Fourth &&
              runtimeType == other.runtimeType &&
              _value == other._value;

  @override
  int get hashCode => _value.hashCode;

  @override
  String toString() => _value.toString();

}