import 'package:flutter/material.dart';
import 'package:mars/meditate/meditate_abstract.dart';

class MeditateIntro extends MeditateAbstract {
  MeditateIntro(String curState, callback, callbackLog)
      : super(curState, callback, callbackLog, 'assets/meditate_1.png', hasBack:false, hasForward:false);

  @override
  Widget myWidget(BuildContext context, Function() refresh) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 120),
      ),
      Text(
        'These 3 minute exercises are\ndesigned to help you slow\ndown and get off autopilot.\n\nEach medication is designed\nto help you relax, get control\nof your breath, and manage\nsmoking urges.',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
      ),
      Padding(
        padding: EdgeInsets.only(top: 80),
      ),
      Container(
        height: 80.0,
        width: 80.0,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: Color(0xffdc41d6),
            child: Text(
              'Begin',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              callbackLog(curState, "begin_button", "pressed");
              callback(curState, "next", null);
            },
          ),
        ),
      ),
    ]);
  }
}
