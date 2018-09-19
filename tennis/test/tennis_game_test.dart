import 'package:tennis_game_example/advantage.dart';
import 'package:tennis_game_example/game.dart';
import 'package:tennis_game_example/player.dart';
import 'package:tennis_game_example/player_points.dart';
import 'package:tennis_game_example/score.dart';
import 'package:tennis_game_example/tennis_game.dart';
import 'package:test/test.dart';

void main() {
  group('Tennis game test', ()  {

    /* start */
    Score start = Score.points(PlayerPoints.zero(), PlayerPoints.zero());

    /* fifteenZero */
    Score fifteenZero = _updateAndPrintScore(start, Player.one());

    /* thirtyZero */
    Score thirtyZero = _updateAndPrintScore(fifteenZero, Player.one());

    /* fortyZero */
    Score fortyZero = _updateAndPrintScore(thirtyZero, Player.one());

    test('Tennis game => fortyZero', () {
      expect(
          fortyZero.getScore(),
          Score.points(
              PlayerPoints.forty() ,
              PlayerPoints.zero()
          ).getScore());
    }, skip: false);

    /* fortyThirty */
    Score fortyThirty = _updateAndPrintScore(
        TennisGame.scorePoint(fortyZero, Player.two()), Player.two());

    test('Tennis game => fortyThirty', () {
      expect(
          fortyThirty.getScore(),
          Score.points(
              PlayerPoints.forty(),
              PlayerPoints.thirty()
          ).getScore(),
          );
    }, skip: false);

    /* deuce1 */
    Score deuce1 = _updateAndPrintScore(fortyThirty, Player.two());

    test('Tennis game => deuce1', () {
      expect(
          deuce1.getScore(),
          Score.deuce()
              .getScore());
    }, skip: false);

    /* advantageP1 */
    Score advantageP1 = _updateAndPrintScore(deuce1, Player.one());

    test('Tennis game => advantageP1', () {
      expect(
          advantageP1.getScore(),
          Score.advantage(
              Advantage.one()
          ).getScore()
          );
    }, skip: false);

    /* gameP1 */
    Score gameP1 = _updateAndPrintScore(advantageP1, Player.one());

    test('Tennis game => gameP1', () {
      expect(
          gameP1.getScore(),
          Score.game(
              Game.one()
          ).getScore());
    }, skip: false);

    /* zeroFifteen */
    Score zeroFifteen = _updateAndPrintScore(gameP1, Player.two());

    test('Tennis game => zeroFifteen', () {
      expect(
          zeroFifteen.getScore(),
          Score.points(
              PlayerPoints.zero(),
              PlayerPoints.fifteen()
          ).getScore()
          );
    }, skip: false);

    /* deuce2 */
    Score deuce2 = _updateAndPrintScore(advantageP1, Player.two());

    test('Tennis game => deuce2', () {
      expect(
          deuce2.getScore(),
          Score.deuce()
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