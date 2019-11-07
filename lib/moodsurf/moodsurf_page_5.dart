import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'moodsurf_abstract.dart';

class MoodSurfPage5 extends MoodSurfAbstract {
  MoodSurfPage5(String curState, callback, callbackLog)
      : super(curState, callback, callbackLog, 'assets/moodsurf_6.png');

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
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Text(
              "Thinking of your thoughts and\nemotions as waves can help\nyou navigate rather than get\nwiped out by the experiance.\n\nOur thoughts and emotions\nare constantly changing.\n\nThe more you practice\nobserving without judging, the\nbetter you'll get at seeing a\nwave coming and deciding\nwhether to ride it or\nlet it pass you by.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black)),
        ),
      ],
    );
  }
}
