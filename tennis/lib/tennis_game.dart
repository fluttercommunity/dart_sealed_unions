import 'package:tennis_game_example/advantage.dart';
import 'package:tennis_game_example/deuce.dart';
import 'package:tennis_game_example/game.dart';
import 'package:tennis_game_example/player.dart';
import 'package:tennis_game_example/player_points.dart';
import 'package:tennis_game_example/points.dart';
import 'package:tennis_game_example/score.dart';

class TennisGame {
  static Score scorePoint(Score score, Player player) =>
      score.getScore().join(scorePoints(player), scoreAdvantage(player), scoreDeuce(player), scoreGame(player));

  static Score Function(Points) scorePoints(final Player player) => (points) {
        if (isPlayerForty(points.first)) {
          return player.getPlayer().join(
              (playerOne) => Score.game(Game.one()),
              (playerTwo) =>
                  isPlayerThirty(points.last) ? Score.deuce() : scorePlayer(points.first, score(points.last)));
        } else if (isPlayerForty(points.last)) {
          return player.getPlayer().join(
              (playerOne) =>
                  isPlayerThirty(points.first) ? Score.deuce() : scorePlayer(score(points.first), points.last),
              (playerTwo) => Score.game(Game.two()));
        } else {
          return player.getPlayer().join((playerOne) => scorePlayer(score(points.first), points.last),
              (playerTwo) => scorePlayer(points.first, score(points.last)));
        }
      };

  static Score scorePlayer(PlayerPoints playerOnePoints, PlayerPoints playerTwoPoints) =>
      Score.points(playerOnePoints, playerTwoPoints);

  static bool isPlayerThirty(PlayerPoints playerPoints) =>
      playerPoints.getPlayerPoints().join((zero) => false, (fifteen) => false, (thirty) => true, (forty) => false);

  static bool isPlayerForty(PlayerPoints playerPoints) =>
      playerPoints.getPlayerPoints().join((zero) => false, (fifteen) => false, (thirty) => false, (forty) => true);

  static PlayerPoints score(PlayerPoints playerPoints) => playerPoints.getPlayerPoints().join(
      (zero) => PlayerPoints.fifteen(),
      (fifteen) => PlayerPoints.thirty(),
      (thirty) => PlayerPoints.forty(),
      (forty) => throw StateError("illegal point"));

  static Score Function(Advantage) scoreAdvantage(final Player player) {
    return (advantage) => advantage.getPlayer().join(
        (playerOne) => player.getPlayer().join((playerOne) => Score.game(Game.one()), (playerTwo) => Score.deuce()),
        (playerTwo) => player.getPlayer().join((playerOne) => Score.deuce(), (playerTwo) => Score.game(Game.two())));
  }

  static Score Function(Deuce) scoreDeuce(final Player player) {
    return (deuce) => player
        .getPlayer()
        .join((playerOne) => Score.advantage(Advantage.one()), (playerTwo) => Score.advantage(Advantage.two()));
  }

  static Score Function(Game) scoreGame(final Player player) {
    return (game) => player.getPlayer().join((playerOne) => scorePlayer(PlayerPoints.fifteen(), PlayerPoints.zero()),
        (playerTwo) => scorePlayer(PlayerPoints.zero(), PlayerPoints.fifteen()));
  }
}
