import 'package:flutter/material.dart';

import 'notice_abstract.dart';

class NoticeIntro extends NoticeAbstract {
  NoticeIntro(String curState, callback, callbackLog)
      : super(curState, callback, callbackLog, 'assets/notice_1.png');

  @override
  Widget myWidget(BuildContext context, Function() refresh) {
    return Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(60),
      ),
      Text(
        'This exercise will help you\nbecome more aware of and\nlearn to accept physical\nsensations.\n\nTake a moment\nto just notice\nwhat is\nhappening\nin your\nbody.',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.black87),
      ),
    ]);
  }
}
