class PlayerTwo {

  const PlayerTwo();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is PlayerTwo &&
              runtimeType == other.runtimeType;

  @override
  int get hashCode => 2;

}