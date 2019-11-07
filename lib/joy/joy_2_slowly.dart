import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mars/joy/joy_abstract.dart';


class Joy2Slowly extends JoyAbstract {
  Joy2Slowly(String curState, callback, callbackLog)
      : super(curState, callback, callbackLog, 'assets/joy_0.png');
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
                      "Slowly inhale through your nose\nto the count of four, pause for\ntwo counts, and slowly exhale\nthrough your mouth to the\ncount of six: 4-2-6!\n\nGive it a try!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                      )),
                ),
              ],
    );
  }
}
