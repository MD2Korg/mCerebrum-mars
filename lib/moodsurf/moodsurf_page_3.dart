import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'moodsurf_abstract.dart';

class MoodSurfPage3 extends MoodSurfAbstract {
  MoodSurfPage3(String curState, callback, callbackLog)
      : super(curState, callback, callbackLog, 'assets/moodsurf_4.png');
  @override
  Future<void> init() {
    return super.init();
  }
  @override
  Future<void> start() {
    return super.start();
  }
  @override
  Future<void> stop() {
    return super.stop();
  }

  @override
  Widget myWidget(BuildContext context, Function() refresh) {
    return Column(
      children: <Widget>[
        SizedBox(height: 80),
        Container(
          padding: EdgeInsets.all(50),
          width: double.infinity,
          child: Text(
              "Imagine yourself riding\nthose waves of thoughts\nor emotions.\nNot reacting as they\npeak and fade away.\nEmotions come,\nemotions go.\nThoughts come,\nthoughts go.",
              textAlign: TextAlign.right,
              style: TextStyle(color: Colors.black)),
        ),
      ],
    );
  }
}
