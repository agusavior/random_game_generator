import 'package:first_flutter_app/data/moor_database.dart';
import 'dart:math';

import 'package:first_flutter_app/game/game.dart';

extension NodeUtils on Node {
  int getColor() {
    return ((number == 0) ? 0x00FFFFFF : (getRandom("color").nextInt(0xFFFFFFFF) | 0xFF000000)) & 0xFFFFFFFF;
  }

  bool hasTimerEffect() {
    return number != 0 && getRandom("hasTimerEffect").nextBool();
  }

  double getTimerPercent() {
    int period = getPeriod();
    return (timerCounter % period) / period;
  }

  int getPeriod() {
    return getRandom("period").nextInt(number + 1) + 1;
  }

  Random getRandom(String extraSeed) {
    // TODO: Put extra "^" of the world creation.
    return Random(number ^ extraSeed.hashCode ^ Game.worldSeed);
  }

  int getNumberColor() {
    final bgColor = getColor();
    final int r = bgColor & 0xFF;
    final int g = (bgColor & 0xFF00) >> 8;
    final int b = (bgColor & 0xFF0000) >> 16;
    return (r + g + b > 381) ? 0xFF000000 : 0xFFFFFFFF;
  }
}