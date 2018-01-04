class Forty {

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Forty &&
              runtimeType == other.runtimeType;

  @override
  int get hashCode => 40;

}