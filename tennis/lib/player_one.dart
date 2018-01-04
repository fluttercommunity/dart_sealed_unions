class PlayerOne {

  const PlayerOne();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is PlayerOne &&
              runtimeType == other.runtimeType;

  @override
  int get hashCode => 1;

}