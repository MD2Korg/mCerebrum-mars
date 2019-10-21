import 'package:flutter/material.dart';
import 'package:mars/notice/notice_abstract.dart';

class NoticeBegin extends NoticeAbstract {
  NoticeBegin(String curState, void Function(String, String, String) callback)
      : super(curState, callback, 'assets/notice_1.png', hasBack:false, hasForward:false);

  @override
  Widget myWidget(BuildContext context, Function() refresh) {
    return Column(children: <Widget>[
      Padding(padding:EdgeInsets.only(top:100)),
      Text(
        'notice',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.black, fontSize: 24),
      ),
      Container(
        padding: EdgeInsets.all(20),
        child: Text(
          'Sometimes we experience\nthoughts or feelings as\nuncomfortable physical\nsensations. Accepting that\nthese sensations sometimes\noccur is one way to deal with\nthese experiences.',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10),
      ),
      Container(
        height: 90.0,
        width: 90.0,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: Color(0xfff9926f),
            splashColor: Color(0xfffccbbc),
            shape: RoundedRectangleBorder(side: BorderSide(),borderRadius: BorderRadius.circular(50)),

            child: Text(
              'Begin',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              callback(curState, "begin",null);
            },
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(15),
      ),
    ]);
  }
}
