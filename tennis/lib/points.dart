import 'package:collection/src/utils.dart';
import 'package:tennis_game_example/player_points.dart';

class Points extends Pair<PlayerPoints, PlayerPoints> {
  Points(PlayerPoints key, PlayerPoints value) :super(key, value);

  @override
  String toString() {
    return "Points{" + PlayerPoints.getString(first) + ", "
        + PlayerPoints.getString(last) + "}";
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Points &&
              runtimeType == other.runtimeType &&
              first == other.first && last == other.last;

  @override
  int get hashCode =>
      (first == null ? 0 : first.hashCode) ^ (last == null ? 0 : last.hashCode);

}