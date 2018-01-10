import 'package:tennis_game_example/advantage.dart';
import 'package:tennis_game_example/game.dart';
import 'package:tennis_game_example/player.dart';
import 'package:tennis_game_example/player_points.dart';
import 'package:tennis_game_example/score.dart';
import 'package:tennis_game_example/tennis_game.dart';
import 'package:test/test.dart'
    hide Func0, Func1, Func2, Func3, Func4, Func5, Func6;


void main() {
  group('Tennis game test', ()  {

    /* start */
    Score start = new Score.points(new PlayerPoints.zero(), new PlayerPoints.zero());

    /* fifteenZero */
    Score fifteenZero = _updateAndPrintScore(start, new Player.one());

    /* thirtyZero */
    Score thirtyZero = _updateAndPrintScore(fifteenZero, new Player.one());

    /* fortyZero */
    Score fortyZero = _updateAndPrintScore(thirtyZero, new Player.one());

    test('Tennis game => fortyZero', () {
      expect(
          fortyZero.getScore(),
          new Score.points(
              new PlayerPoints.forty() ,
              new PlayerPoints.zero()
          ).getScore());
    }, skip: false);

    /* fortyThirty */
    Score fortyThirty = _updateAndPrintScore(
        TennisGame.scorePoint(fortyZero, new Player.two()), new Player.two());

    test('Tennis game => fortyThirty', () {
      expect(
          fortyThirty.getScore(),
          new Score.points(
              new PlayerPoints.forty(),
              new PlayerPoints.thirty()
          ).getScore(),
          );
    }, skip: false);

    /* deuce1 */
    Score deuce1 = _updateAndPrintScore(fortyThirty, new Player.two());

    test('Tennis game => deuce1', () {
      expect(
          deuce1.getScore(),
          new Score.deuce()
              .getScore());
    }, skip: false);

    /* advantageP1 */
    Score advantageP1 = _updateAndPrintScore(deuce1, new Player.one());

    test('Tennis game => advantageP1', () {
      expect(
          advantageP1.getScore(),
          new Score.advantage(
              new Advantage.one()
          ).getScore()
          );
    }, skip: false);

    /* gameP1 */
    Score gameP1 = _updateAndPrintScore(advantageP1, new Player.one());

    test('Tennis game => gameP1', () {
      expect(
          gameP1.getScore(),
          new Score.game(
              new Game.one()
          ).getScore());
    }, skip: false);

    /* zeroFifteen */
    Score zeroFifteen = _updateAndPrintScore(gameP1, new Player.two());

    test('Tennis game => zeroFifteen', () {
      expect(
          zeroFifteen.getScore(),
          new Score.points(
              new PlayerPoints.zero(),
              new PlayerPoints.fifteen()
          ).getScore()
          );
    }, skip: false);

    /* deuce2 */
    Score deuce2 = _updateAndPrintScore(advantageP1, new Player.two());

    test('Tennis game => deuce2', () {
      expect(
          deuce2.getScore(),
          new Score.deuce()
              .getScore()
      );
    }, skip: false);
  });

}


Score _updateAndPrintScore(Score oldScore, Player player) {
  Score newScore = TennisGame.scorePoint(oldScore, player);
  print(Score.getString(oldScore) + " + " + Player.getString(player) + " -> "
      + Score.getString(newScore));
  return newScore;
}