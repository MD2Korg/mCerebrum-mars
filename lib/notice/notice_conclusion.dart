import 'package:flutter/material.dart';

import 'notice_abstract.dart';

class NoticeConclusion extends NoticeAbstract {
  NoticeConclusion(String curState, void Function(String, String, String) callback)
      : super(curState, callback, 'assets/notice_1.png');

  @override
  Widget myWidget(BuildContext context, Function() refresh) {
    return Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(60),
      ),
      Text(
        'Noticing how sensations make\nus feel and affect the body\ncan help us realize the power\nthey have in our daily lives.\n\nWhen we practice noticing\nthese sensations without\njudgement, it can help us\nbetter understand ourselves\nand accept that these\nsensations sometimes happen.',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.black),
      ),
    ]);
  }
}
