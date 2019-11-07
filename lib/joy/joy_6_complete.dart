import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mars/joy/joy_abstract.dart';


class Joy6Complete extends JoyAbstract {
  Joy6Complete(String curState, callback, callbackLog)
      : super(curState, callback, callbackLog, 'assets/joy_1.png',hasBack:false);
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
                Container(
                  padding: EdgeInsets.only(top:120),
                  child: Text(
                      "Complete!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                      )),
                ),
              ],
    );
  }
}
