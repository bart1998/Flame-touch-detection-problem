import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:flame/game.dart';


class MyGame extends BaseGame {
  final BuildContext context;

  MyGame(this.context);

  @override
  void render(Canvas canvas) {
    return;
  }

  @override
  void update(double t) {
    return;
  }

  @override
  void resize(Size size) {
    super.resize(size);
  }

  void handleInput(double x, double y) {
    print("Touched on: $x $y");
  }
}
