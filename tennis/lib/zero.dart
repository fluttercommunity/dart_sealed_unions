class Zero {

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Zero &&
              runtimeType == other.runtimeType;

  @override
  int get hashCode => 0;

}