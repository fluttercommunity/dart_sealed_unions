class Fifteen {

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Fifteen &&
              runtimeType == other.runtimeType;

  @override
  int get hashCode => 15;

}