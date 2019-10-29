import 'package:flutter/material.dart';

import 'notice_abstract.dart';

class NoticeExperienceDetail extends NoticeAbstract {

  NoticeExperienceDetail(String curState,
      callback, callbackLog)
      : super(curState, callback, callbackLog, 'assets/notice_1.png');

  @override
  Widget myWidget(BuildContext context, Function() refresh) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 80),
      ),
      Text(
        'Take a couple of\nminutes and focus on\nyour sensation of',
        textAlign: TextAlign.center,
      ),
      Container(
        padding: EdgeInsets.only(top:10),
        child: Text(
          data,
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(0xfffbb299), fontSize: 22),
        ),
      ),
      Container(
        padding: EdgeInsets.only(top:10),
        child: Text(
          'Remember this is just a sensation,\neven though your mind may\nlabel them as "good" or "bad."\nYou can simply allow physical\nsensations to be present.\n\nTry noticing sensations in your\nbody without judging or labeling them',
          textAlign: TextAlign.center,
        ),
      ),
    ]);
  }
}
