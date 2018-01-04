import 'package:tennis_game_example/player.dart';
import 'package:dart_sealed_unions/factories/doublet_factory.dart';
import 'package:dart_sealed_unions/union_2.dart';
import 'package:tennis_game_example/player_one.dart';
import 'package:tennis_game_example/player_two.dart';

abstract class Game extends Player {

  static const Doublet<PlayerOne, PlayerTwo> FACTORY = const Doublet<PlayerOne, PlayerTwo>();

  static final Union2<PlayerOne, PlayerTwo> gamePlayerOne = FACTORY.first(const PlayerOne());

  static final Union2<PlayerOne, PlayerTwo> gamePlayerTwo = FACTORY.second(const PlayerTwo());

  Game();

  factory Game.one(){
    return new _GamePlayerOne();
  }

  factory Game.two(){
    return new _GamePlayerTwo();
  }

}

class _GamePlayerOne extends Game {

  @override
  Union2<PlayerOne, PlayerTwo> getPlayer() {
    return Game.gamePlayerOne;
  }

}

class _GamePlayerTwo extends Game {

  @override
  Union2<PlayerOne, PlayerTwo> getPlayer() {
    return Game.gamePlayerTwo;
  }

}