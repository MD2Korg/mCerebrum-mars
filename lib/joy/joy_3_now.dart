import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mars/joy/joy_abstract.dart';


class Joy3Now extends JoyAbstract {
  Joy3Now(String curState, callback, callbackLog)
      : super(curState, callback, callbackLog, 'assets/joy_0.png');

  @override
  Widget myWidget(BuildContext context, Function() refresh) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                      "Now pull up a picture on\nyour personal phone,\non your computer, or\nin your home of\nsomething that brings\nyou joy.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                      )),
                ),
              ],
    );
  }
}
