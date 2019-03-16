import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:flame/flame.dart';
import 'package:flutter_test_app/Constants.dart';
import 'package:flutter_test_app/MyGame.dart';

void main() async {
  runApp(MaterialApp(
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Constants.game = null;

    return Scaffold(
        appBar: AppBar(
          title: Text('First Route'),
        ),
        body: SafeArea(
            child: Center(
          child: RaisedButton(
            child: Text('Open route'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              );
            },
          ),
        )));
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Constants.game = MyGame(context);

    return  GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapDown: (TapDownDetails evt) {
        print("Touch detected!");
        Constants.game.handleInput(evt.globalPosition.dx, evt.globalPosition.dy);
      },
      child: Constants.game.widget,
    );
  }
}
