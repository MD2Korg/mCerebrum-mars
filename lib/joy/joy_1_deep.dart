import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mars/joy/joy_abstract.dart';


class Joy1Deep extends JoyAbstract {
  Joy1Deep(String curState, callback, callbackLog)
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
                      "Deep breathing can help you\nreduce stress, anxiety, and\ncigarette craving.\n\nTo practice deep breathing,\nsit or lie down in a comfortable\nposition.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                      )),
                ),
              ],
    );
  }
}
