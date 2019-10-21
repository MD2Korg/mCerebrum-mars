import 'package:flutter/material.dart';

import 'notice_abstract.dart';

class NoticeExperienceQ extends NoticeAbstract {
  NoticeExperienceQ(
      String curState, void Function(String, String, String) callback)
      : super(curState, callback, 'assets/notice_1.png');
  final Map<String, bool> map = {
    'one': false,
    'multiple': false,
    'changing': false,
    'same': false
  };

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
          'is it in one place or in\nmultiple places in your body?',
          textAlign: TextAlign.center,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(20),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            height: 40.0,
            width: 130.0,
            child: SizedBox(
              child: RaisedButton(
                color: map["one"] == true ? Color(0xfffbb299) : Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  'One',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  bool res = map["one"];
                  map["one"] = !res;
                  map["multiple"] = false;
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
                color:
                    map["multiple"] == true ? Color(0xfffbb299) : Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  'Multiple',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  bool res = map["multiple"];
                  map["multiple"] = !res;
                  map["one"] = false;
                  refresh();
                },
              ),
            ),
          ),
        ],
      ),
      Container(
        padding: EdgeInsets.only(top: 30, bottom: 30),
        child: Text(
          'is it changing or does it\nalways stay the same? ',
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
                color:
                    map["changing"] == true ? Color(0xfffbb299) : Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  'Changing',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  bool res = map["changing"];
                  map["changing"] = !res;
                  map["same"] = false;
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
                color: map["same"] == true ? Color(0xfffbb299) : Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  'Same',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  bool res = map["same"];
                  map["same"] = !res;
                  map["changing"] = false;
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
