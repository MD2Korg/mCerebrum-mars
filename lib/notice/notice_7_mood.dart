import 'dart:async';

import 'package:flutter/material.dart';

import 'notice_abstract.dart';

class NoticeExperienceQ4 extends NoticeAbstract {
  NoticeExperienceQ4(
      String curState, callback, callbackLog)
      : super(curState, callback, callbackLog, 'assets/notice_1.png');
   Map<String, bool> map;
  @override
  Future<void> init() async{
    map = {
      'yes1': false,
      'no1': false,
      'yes2': false,
      'no2': false,
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
          'Has it affected\nyour mood?',
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
                color: map["yes1"] == true ? Color(0xfffbb299) : Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  'Yes',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  bool res = map["yes1"];
                  map["yes1"] = !res;
                  map["no1"] = false;
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
                color: map["no1"] == true ? Color(0xfffbb299) : Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  'No',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  bool res = map["no1"];
                  map["no1"] = !res;
                  map["yes1"] = false;
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
          'Is it interfering with\nyour day?',
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
                color: map["yes2"] == true ? Color(0xfffbb299) : Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  'Yes',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  bool res = map["yes2"];
                  map["yes2"] = !res;
                  map["no2"] = false;
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
                color: map["no2"] == true ? Color(0xfffbb299) : Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  'No',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  bool res = map["no2"];
                  map["no2"] = !res;
                  map["yes2"] = false;
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
