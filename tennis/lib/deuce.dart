class Deuce {

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Deuce &&
              runtimeType == other.runtimeType;

  @override
  int get hashCode => 42;

}