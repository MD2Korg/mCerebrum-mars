import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'moodsurf_abstract.dart';

class MoodSurfPage2 extends MoodSurfAbstract {
  MoodSurfPage2(String curState, callback, callbackLog)
      : super(curState, callback, callbackLog, 'assets/moodsurf_3.png');
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
          Padding(padding: EdgeInsets.only(top:180)),
          Container(
            padding: EdgeInsets.only(left: 32.0),
            child: Text(
                "Imagine your thoughts and\nemotions as waves.\nThey ebb and flow.\nRising and falling.\nHere they are\nand there\nthey go.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black)),
          ),
        ],
    );
  }
}
