import 'dart:async';

import 'package:flutter/material.dart';

import 'notice_abstract.dart';

class NoticeExperienceQ3 extends NoticeAbstract {
  NoticeExperienceQ3(
      String curState, callback, callbackLog)
      : super(curState, callback, callbackLog, 'assets/notice_1.png');
  Map<String, bool> map;
  @override
  Future<void> init() async{
    map = {
      'yes': false,
      'no': false,
      'injury': false,
      'illness': false,
      'social': false,
      'other': false,
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
          'Do you feel this daily?',
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
      Container(
        padding: EdgeInsets.all(30),
        child: Text(
          'Is this due to ...',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
      ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                height: 40.0,
                width: 130.0,
                child: SizedBox(
                  child: RaisedButton(
                    color: map["injury"] == true ? Color(0xfffbb299) : Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      'Injury',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      bool res = map["injury"];
                      map["injury"] = !res;
                      map["illness"]=false;
                      map["social"]=false;
                      map["other"]=false;
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
                    color: map["illness"] == true ? Color(0xfffbb299) : Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      'Illness',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      bool res = map["illness"];
                      map["illness"] = !res;
                      map["injury"]=false;
                      map["social"]=false;
                      map["other"]=false;
                      refresh();
                    },
                  ),
                ),
              ),
            ],
          ),
          Padding(padding:EdgeInsets.only(top:40)),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            height: 40.0,
            width: 130.0,
            child: SizedBox(
              child: RaisedButton(
                color: map["social"] == true ? Color(0xfffbb299) : Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  'Social',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  bool res = map["social"];
                  map["social"] = !res;
                  map["injury"]=false;
                  map["illness"]=false;
                  map["other"]=false;
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
                color: map["other"] == true ? Color(0xfffbb299) : Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  'Other',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  bool res = map["other"];
                  map["other"] = !res;
                  map["injury"]=false;
                  map["illness"]=false;
                  map["social"]=false;
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
