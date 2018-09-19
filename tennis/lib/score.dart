import 'package:sealed_unions/factories/quartet_factory.dart';
import 'package:sealed_unions/union_4.dart';
import 'package:tennis_game_example/advantage.dart';
import 'package:tennis_game_example/deuce.dart';
import 'package:tennis_game_example/game.dart';
import 'package:tennis_game_example/player_points.dart';
import 'package:tennis_game_example/points.dart';

abstract class Score {

  Score();

  factory Score.points(final PlayerPoints playerOnePoints,
      final PlayerPoints playerTwoPoints) =>
      _Score(() =>
          Quartet<Points, Advantage, Deuce, Game>()
              .first(Points(playerOnePoints, playerTwoPoints)));

  factory Score.advantage(final Advantage advantage) =>
      _Score(() =>
          Quartet<Points, Advantage, Deuce, Game>()
              .second(advantage));

  factory Score.deuce() =>
      _Score(() =>
          Quartet<Points, Advantage, Deuce, Game>()
              .third(Deuce()));

  factory Score.game(final Game game) =>
      _Score(() =>
          Quartet<Points, Advantage, Deuce, Game>()
              .fourth(game));

  static String getString(Score score) {
    return score.getScore().join(
        mapScoreString(), mapAdvantageString(), mapDeuceString(),
        mapGameString());
  }

  static String Function(Points) mapScoreString() =>
          (points) => points.toString();

  static String Function(Advantage) mapAdvantageString() =>
          (advantage) =>
          advantage.getPlayer()
              .join(
                  (playerOne) => "Adv P1",
                  (playerTwo) => "Adv P2"
          );

  static String Function(Deuce) mapDeuceString() => (deuce) => "Deuce";

  static String Function(Game) mapGameString() =>
          (game) =>
          game.getPlayer()
              .join(
                  (playerOne) => "Win P1",
                  (playerTwo) => "Win P2"
          );

  @override
  String toString() {
    return getString(this);
  }

  Union4<Points, Advantage, Deuce, Game> getScore();
}

class _Score extends Score {

  Union4<Points, Advantage, Deuce, Game> Function() _getScore;

  _Score(this._getScore);

  @override
  Union4<Points, Advantage, Deuce, Game> getScore() {
    return _getScore();
  }

}