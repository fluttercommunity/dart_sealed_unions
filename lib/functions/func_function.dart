/// A functional interface that takes a value and returns another value, possibly with a
/// different type and allows throwing a checked exception.
///
/// @param <T> the input value type
/// @param <R> the output value type


typedef T Func0<T>();
typedef T Func1<T, A>([A a]);
typedef T Func2<T, A, B>([A a, B b]);
typedef T Func3<T, A, B, C>([A a, B b, C c]);
typedef T Func4<T, A, B, C, D>([A a, B b, C c, D d]);
typedef T Func5<T, A, B, C, D, E>([A a, B b, C c, D d, E e]);
typedef T Func6<T, A, B, C, D, E, F>([A a, B b, C c, D d, E e, F f]);