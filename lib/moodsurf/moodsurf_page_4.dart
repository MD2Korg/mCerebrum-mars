import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'moodsurf_abstract.dart';

class MoodSurfPage4 extends MoodSurfAbstract {
  MoodSurfPage4(String curState, callback, callbackLog)
      : super(curState, callback, callbackLog, 'assets/moodsurf_5.png');

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
        Padding(padding: EdgeInsets.only(top:140)),
        Container(
          padding: EdgeInsets.all(50),
          width: double.infinity,
          child: Text(
              "Some days the\nwater is calm and\nother days are stormy.\n\nOnly catch the waves\nyou want to ride\nand let the others\npass you by.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black)),
        ),
      ],
    );
  }
}
