import 'dart:async';

import 'package:flutter/material.dart';

import 'notice_abstract.dart';

class NoticeExperienceQ2 extends NoticeAbstract {
  NoticeExperienceQ2(
      String curState, callback, callbackLog)
      : super(curState, callback, callbackLog, 'assets/notice_1.png');
   Map<String, bool> map;
  @override
  Future<void> init() async{
    map = {
      'strong': false,
      'weak': false,
      'yes': false,
      'no': false,
    };
  }

  @override
  Widget myWidget(BuildContext context, Function() refresh) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
      Text(
        'Take a moment to answer the\nfollowing questions about your ',
        textAlign: TextAlign.center,
      ),
      Container(
        padding: EdgeInsets.only(top: 10),
        child: Text(
          data,
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(0xfffbb299), fontSize: 22),
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 10),
        child: Text(
          'Is it...',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            height: 40.0,
            width: 130.0,
            child: SizedBox(
              child: RaisedButton(
                color: map["strong"] == true ? Color(0xfffbb299) : Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  'Strong',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  bool res = map["strong"];
                  map["strong"] = !res;
                  map["weak"] = false;
                  refresh();
                },
              ),
            ),
          ),
          Container(
            height: 40.0,
            width: 130.0,
            child: SizedBox(
              child: RaisedButton(
                color: map["weak"] == true ? Color(0xfffbb299) : Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  'Weak',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  bool res = map["weak"];
                  map["weak"] = !res;
                  map["strong"] = false;
                  refresh();
                },
              ),
            ),
          ),
        ],
      ),
      Container(
        padding: EdgeInsets.all(30),
        child: Text(
          'Are there places in your body where you dont feel it? ',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(0),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            height: 40.0,
            width: 130.0,
            child: SizedBox(
              child: RaisedButton(
                color: map["yes"] == true ? Color(0xfffbb299) : Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  'Yes',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  bool res = map["yes"];
                  map["yes"] = !res;
                  map["no"] = false;
                  refresh();
                },
              ),
            ),
          ),
          Container(
            height: 40.0,
            width: 130.0,
            child: SizedBox(
              child: RaisedButton(
                color: map["no"] == true ? Color(0xfffbb299) : Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  'No',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  bool res = map["no"];
                  map["no"] = !res;
                  map["yes"] = false;
                  refresh();
                },
              ),
            ),
          ),
        ],
      ),
    ]);
  }
}
