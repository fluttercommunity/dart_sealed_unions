import 'package:dart_sealed_unions/factories/quartet_factory.dart';
import 'package:dart_sealed_unions/union_4.dart';
import 'package:tennis_game_example/fifteen.dart';
import 'package:tennis_game_example/forty.dart';
import 'package:tennis_game_example/thirty.dart';
import 'package:tennis_game_example/zero.dart';

abstract class PlayerPoints {

  static const Quartet<Zero, Fifteen, Thirty, Forty> FACTORY = const Quartet<Zero, Fifteen, Thirty, Forty>();

  static final Union4<Zero, Fifteen, Thirty, Forty> _zero = FACTORY.first(new Zero());

  static final Union4<Zero, Fifteen, Thirty, Forty> _fifteen = FACTORY.second(new Fifteen());

  static final Union4<Zero, Fifteen, Thirty, Forty> _thirty = FACTORY.third(new Thirty());

  static final Union4<Zero, Fifteen, Thirty, Forty> _forty = FACTORY.fourth(new Forty());

  PlayerPoints();

  factory PlayerPoints.zero() {
    return createPlayerPointsFromGeneric(_zero);
  }

  factory PlayerPoints.fifteen() {
    return createPlayerPointsFromGeneric(_fifteen);
  }

  factory PlayerPoints.thirty() {
    return createPlayerPointsFromGeneric(_thirty);
  }

  factory PlayerPoints.forty() {
    return createPlayerPointsFromGeneric(_forty);
  }

  static PlayerPoints createPlayerPointsFromGeneric(
      final Union4<Zero, Fifteen, Thirty, Forty> union4) {
    return new _PlayerPoints(union4);
  }

  Union4<Zero, Fifteen, Thirty, Forty> getPlayerPoints();

  static String getString(PlayerPoints playerPoints) {
    return playerPoints.getPlayerPoints().join(
          ([zero]) => "0",
          ([fifteen]) => "15",
          ([thirty]) => "30",
          ([forty]) => "40",
    );
  }


  @override
  String toString() {
    return getString(this);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is PlayerPoints &&
              runtimeType == other.runtimeType &&
                getPlayerPoints() == other.getPlayerPoints();

  @override
  int get hashCode => getPlayerPoints().hashCode;

}

class _PlayerPoints extends PlayerPoints{

  Union4<Zero, Fifteen, Thirty, Forty> _union4;

  _PlayerPoints(this._union4);

  @override
  Union4<Zero, Fifteen, Thirty, Forty> getPlayerPoints() => _union4;

}