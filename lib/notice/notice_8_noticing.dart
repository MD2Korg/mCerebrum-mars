import 'dart:async';

import 'package:flutter/material.dart';

import 'notice_abstract.dart';

class NoticeConclusion extends NoticeAbstract {
  NoticeConclusion(String curState,  callback, callbackLog)
      : super(curState, callback, callbackLog, 'assets/notice_1.png');
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
