class Thirty {

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Thirty &&
              runtimeType == other.runtimeType;

  @override
  int get hashCode => 30;

}