import 'package:dart_sealed_unions/functions/func_function.dart';
import 'package:tennis_game_example/advantage.dart';
import 'package:tennis_game_example/deuce.dart';
import 'package:tennis_game_example/game.dart';
import 'package:tennis_game_example/player.dart';
import 'package:tennis_game_example/player_points.dart';
import 'package:tennis_game_example/points.dart';
import 'package:tennis_game_example/score.dart';

class TennisGame {
  static Score scorePoint(Score score, Player player) =>
      score.getScore().join(
          scorePoints(player),
          scoreAdvantage(player),
          scoreDeuce(player),
          scoreGame(player)
      );

  static Func1<Score, Points> scorePoints(final Player player) =>
          ([points]) {
        if (isPlayerForty(points.first)) {
          return player.getPlayer().join(
                  ([playerOne]) => new Score.game(new Game.one()),
                  ([playerTwo]) =>
              isPlayerThirty(points.last)
                  ? new Score.deuce()
                  : scorePlayer(points.first, score(points.last))
          );
        } else if (isPlayerForty(points.last)) {
          return player.getPlayer().join(
                  ([playerOne]) =>
              isPlayerThirty(points.first)
                  ? new Score.deuce()
                  : scorePlayer(score(points.first), points.last),
                  ([playerTwo]) => new Score.game(new Game.two())
          );
        } else {
          return player.getPlayer().join(
                  ([playerOne]) =>
                  scorePlayer(score(points.first), points.last),
                  ([playerTwo]) => scorePlayer(points.first, score(points.last))
          );
        }
      };

  static Score scorePlayer(PlayerPoints playerOnePoints,
      PlayerPoints playerTwoPoints) =>
      new Score.points(playerOnePoints, playerTwoPoints);


  static bool isPlayerThirty(PlayerPoints playerPoints) =>
      playerPoints.getPlayerPoints().join(
              ([zero]) => false,
              ([fifteen]) => false,
              ([thirty]) => true,
              ([forty]) => false
      );


  static bool isPlayerForty(PlayerPoints playerPoints) =>
      playerPoints.getPlayerPoints().join(
              ([zero]) => false,
              ([fifteen]) => false,
              ([thirty]) => false,
              ([forty]) => true
      );

  static PlayerPoints score(PlayerPoints playerPoints) =>
      playerPoints.getPlayerPoints().join(
              ([zero]) => new PlayerPoints.fifteen(),
              ([fifteen]) => new PlayerPoints.thirty(),
              ([thirty]) => new PlayerPoints.forty(),
              ([forty]) => throw new StateError("illegal point")
      );

  static Func1<Score, Advantage> scoreAdvantage(final Player player) {
    return ([advantage]) =>
        advantage.getPlayer().join(
                ([playerOne]) =>
                player.getPlayer().join(
                        ([playerOne]) => new Score.game(new Game.one()),
                        ([playerTwo]) => new Score.deuce()
                ),
                ([playerTwo]) =>
                player.getPlayer().join(
                        ([playerOne]) => new Score.deuce(),
                        ([playerTwo]) => new Score.game(new Game.two())));
  }

  static Func1<Score, Deuce> scoreDeuce(final Player player) {
    return ([deuce]) =>
        player.getPlayer().join(
                ([playerOne]) => new Score.advantage(new Advantage.one()),
                ([playerTwo]) => new Score.advantage(new Advantage.two()));
  }

  static Func1<Score, Game> scoreGame(final Player player) {
    return ([game]) =>
        player.getPlayer().join(
                ([playerOne]) =>
                scorePlayer(
                    new PlayerPoints.fifteen(), new PlayerPoints.zero()),
                ([playerTwo]) =>
                scorePlayer(
                    new PlayerPoints.zero(), new PlayerPoints.fifteen()));
  }

}