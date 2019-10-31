import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mars/joy/joy_abstract.dart';

class Joy4Select extends JoyAbstract {
  Joy4Select(String curState, callback, callbackLog)
      : super(curState, callback, callbackLog, 'assets/joy_0.png', hasForward:false);
  String res="";

  @override
  String getData(){
    return res;
  }
  @override
  Future<void> init() async{
    res="";
  }

  @override
  Widget myWidget(BuildContext context, Function() refresh) {
    return Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top:150),),
        Container(
          child: Text(
              "Select duration\nand practice the breath\nexercise as you look\nat your photos.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
              )),
        ),
        Padding(padding: EdgeInsets.only(top:50),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: 80.0,
              height: 80.0,
              child: FittedBox(
                child: FloatingActionButton(
                  backgroundColor: res=="1"?Color(0xffFFE7C1):Color(0xffffc873),
                  splashColor: Color(0xfffff4e1),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(),
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    '1\nmin',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    if(res=="1") {
                      res="";
                      callbackLog(curState, "1_min_button", "unselected");
                    }
                    else {res="1";
                    callbackLog(curState, "1_min_button", "selected");
                    }
                    refresh();
                  },
                ),
              ),
            ),
            Container(
              width: 80.0,
              height: 80.0,
              child: FittedBox(
                child: FloatingActionButton(
                  backgroundColor: res=="2"?Color(0xffFFE7C1):Color(0xffffc873),
                  splashColor: Color(0xfffff4e1),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(),
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    '2\nmin',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    if(res=="2") {
                      res="";
                      callbackLog(curState, "2_min_button", "unselected");
                    }
                    else {res="2";
                    callbackLog(curState, "2_min_button", "selected");
                    }
                    refresh();
                  },
                ),
              ),
            ),
            Container(
              width: 80.0,
              height: 80.0,
              child: FittedBox(
                child: FloatingActionButton(
                  backgroundColor: res=="3"?Color(0xffFFE7C1):Color(0xffffc873),
                  splashColor: Color(0xfffff4e1),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(),
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    '3\nmin',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    if(res=="3") {
                      res="";
                      callbackLog(curState, "3_min_button", "unselected");
                    }
                    else {res="3";
                    callbackLog(curState, "3_min_button", "selected");
                    }
                    refresh();
                  },
                ),
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(top:50),),
        res==""?Container():
        Container(
          width: 80.0,
          height: 80.0,
          child: FittedBox(
            child: FloatingActionButton(
              backgroundColor: Color(0xffFFE7C1),
              splashColor: Color(0xfffff4e1),
              shape: RoundedRectangleBorder(
                  side: BorderSide(),
                  borderRadius: BorderRadius.circular(50)),
              child: Text(
                'Begin',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                callbackLog(curState, "begin", "pressed");
                callback(curState,"next",res);
              },
            ),
          ),
        ),
      ],
    );
  }
}
