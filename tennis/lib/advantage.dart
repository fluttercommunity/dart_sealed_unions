import 'package:tennis_game_example/player.dart';

import 'package:sealed_unions/factories/doublet_factory.dart';
import 'package:sealed_unions/union_2.dart';
import 'package:tennis_game_example/player_one.dart';
import 'package:tennis_game_example/player_two.dart';

abstract class Advantage extends Player {
  static const Doublet<PlayerOne, PlayerTwo> FACTORY = const Doublet<PlayerOne, PlayerTwo>();

  static final Union2<PlayerOne, PlayerTwo> advantageOne = FACTORY.first(const PlayerOne());

  static final Union2<PlayerOne, PlayerTwo> advantageTwo = FACTORY.second(const PlayerTwo());

  Advantage();

  factory Advantage.one() {
    return _AdvantageOne();
  }

  factory Advantage.two() {
    return _AdvantageTwo();
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Advantage && runtimeType == other.runtimeType && getPlayer() == other.getPlayer();

  @override
  int get hashCode => getPlayer().hashCode;
}

class _AdvantageOne extends Advantage {
  @override
  Union2<PlayerOne, PlayerTwo> getPlayer() {
    return Advantage.advantageOne;
  }
}

class _AdvantageTwo extends Advantage {
  @override
  Union2<PlayerOne, PlayerTwo> getPlayer() {
    return Advantage.advantageTwo;
  }
}
