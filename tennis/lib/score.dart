import 'package:dart_sealed_unions/factories/quartet_factory.dart';
import 'package:dart_sealed_unions/functions/func_function.dart';
import 'package:dart_sealed_unions/union_4.dart';
import 'package:tennis_game_example/advantage.dart';
import 'package:tennis_game_example/deuce.dart';
import 'package:tennis_game_example/game.dart';
import 'package:tennis_game_example/points.dart';
import 'package:tennis_game_example/player_points.dart';

abstract class Score {

  Score();

  factory Score.points(final PlayerPoints playerOnePoints,
      final PlayerPoints playerTwoPoints) =>
     new _Score(() =>
         new Quartet<Points, Advantage, Deuce, Game>()
         .first(new Points(playerOnePoints, playerTwoPoints)));

  factory Score.advantage(final Advantage advantage) =>
      new _Score(() =>
          new Quartet<Points, Advantage, Deuce, Game>()
              .second(advantage));

  factory Score.deuce() =>
      new _Score(() =>
          new Quartet<Points, Advantage, Deuce, Game>()
              .third(new Deuce()));

  factory Score.game(final Game game) =>
      new _Score(() =>
          new Quartet<Points, Advantage, Deuce, Game>()
              .fourth(game));

  static String getString(Score score) {
    return score.getScore().join(mapScoreString(), mapAdvantageString(), mapDeuceString(),
        mapGameString());
  }

  static Func1<String, Points> mapScoreString() => ([points])=> points.toString();

  static Func1<String, Advantage> mapAdvantageString() =>
          ([advantage]) =>
              advantage.getPlayer()
                  .join(
                  ([playerOne])=> "Adv P1",
                  ([playerTwo])=> "Adv P2"
                  );

  static Func1<String, Deuce> mapDeuceString() => ([deuce])=> "Deuce";

  static Func1<String, Game> mapGameString() =>
          ([game]) =>
          game.getPlayer()
              .join(
                  ([playerOne])=> "Win P1",
                  ([playerTwo])=> "Win P2"
          );

  @override
  String toString() {
    return getString(this);
  }

  Union4<Points, Advantage, Deuce, Game> getScore();

}

class _Score extends Score{

  Func0<Union4<Points, Advantage, Deuce, Game>> _getScore;

  _Score(this._getScore);

  @override
  Union4<Points, Advantage, Deuce, Game> getScore() {
   return _getScore();
  }

}