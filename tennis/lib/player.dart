import 'package:sealed_unions/factories/doublet_factory.dart';
import 'package:sealed_unions/union_2.dart';
import 'package:tennis_game_example/player_one.dart';
import 'package:tennis_game_example/player_two.dart';

abstract class Player {

  static const Doublet<PlayerOne, PlayerTwo> FACTORY = const Doublet<PlayerOne, PlayerTwo>();

  static final Union2<PlayerOne, PlayerTwo> playerOne = FACTORY.first(const PlayerOne());

  static final Union2<PlayerOne, PlayerTwo> playerTwo = FACTORY.second(const PlayerTwo());

  Player();

  factory Player.one(){
    return new _PlayerOne();
  }

  factory Player.two(){
    return new _PlayerTwo();
  }

  static String getString(Player player) =>
      player.getPlayer().join(
              ([playerOne]) => "Player 1",
              ([playerTwo]) => "Player 2"
      );

  Union2<PlayerOne, PlayerTwo> getPlayer();

  String toString() => getString(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Player &&
              runtimeType == other.runtimeType &&
              getPlayer() == other.getPlayer();

  @override
  int get hashCode => getPlayer().hashCode;

}

class _PlayerOne extends Player {

  @override
  Union2<PlayerOne, PlayerTwo> getPlayer() {
    return Player.playerOne;
  }

}

class _PlayerTwo extends Player {

  @override
  Union2<PlayerOne, PlayerTwo> getPlayer() {
    return Player.playerTwo;
  }

}