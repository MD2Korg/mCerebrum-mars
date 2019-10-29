import 'package:flutter/material.dart';

import 'meditate_abstract.dart';

class MeditateMenu extends MeditateAbstract {
  MeditateMenu(String curState, callback, callbackLog)
      : super(curState, callback, callbackLog, 'assets/meditate_1.png',hasBack:false, hasForward:false);

  @override
  Widget myWidget(BuildContext context, Function() refresh) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 150),
        ),
        SizedBox(height: 400,width: 300,child:
        Stack(children: <Widget>[
          Container(
            margin: EdgeInsets.only(left:120),
              height: 70.0,
              width: 70.0,
              child: FittedBox(
                child: FloatingActionButton(
                  backgroundColor: Color(0xff99eafa),
                  child: Text(
                    'peak',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    data="peak";
                    callbackLog(curState, data, "pressed");
                    callback(curState, "next", "peak");
                  },
                ),
              )),
          Container(
              margin: EdgeInsets.only(left:30, top:50),
              height: 70.0,
              width: 70.0,
              child: FittedBox(
                child: FloatingActionButton(
                  backgroundColor: Color(0xffbc5bf0),
                  child: Text(
                    'breath',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    data="breath";
                    callbackLog(curState, data, "pressed");
                    callback(curState, "next","breath");
                  },
                ),
              )),
          Container(
              margin: EdgeInsets.only(left:210, top:50),
              height: 70.0,
              width: 70.0,
              child: FittedBox(
                child: FloatingActionButton(
                  backgroundColor: Color(0xffff94d5),
                  child: Text(
                    'walk',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    data="walk";
                    callbackLog(curState, data, "pressed");
                    callback(curState, "next", "walk");
                  },
                ),
              )),
          Container(
              margin: EdgeInsets.only(left:120,top:120),
              height: 70.0,
              width: 70.0,
              child: FittedBox(
                child: FloatingActionButton(
                  backgroundColor: Color(0xffa2a2a2),
                  child: Text(
                    'intro',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    data="intro";
                    callbackLog(curState, data, "pressed");
                    callback(curState, "next","intro");
                  },
                ),
              )),
          Container(
              margin: EdgeInsets.only(left:20,top:150),
              height: 70.0,
              width: 70.0,
              child: FittedBox(
                child: FloatingActionButton(
                  backgroundColor: Color(0xffc6ff7d),
                  child: Text(
                    'mind',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    data="mind";
                    callbackLog(curState, data, "pressed");
                    callback(curState, "next","mind");
                  },
                ),
              )),
          Container(
              margin: EdgeInsets.only(left:220,top:150),
              height: 70.0,
              width: 70.0,
              child: FittedBox(
                child: FloatingActionButton(
                  backgroundColor: Color(0xffFF5959),
                  child: Text(
                    'aware',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    data="aware";
                    callbackLog(curState, data, "pressed");
                    callback(curState, "next","aware");
                  },
                ),
              )),
          Container(
              margin: EdgeInsets.only(left:70,top:240),
              height: 70.0,
              width: 70.0,
              child: FittedBox(
                child: FloatingActionButton(
                  backgroundColor: Color(0xffD6AB88),
                  child: Text(
                    'body',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    data="body";
                    callbackLog(curState, data, "pressed");
                    callback(curState, "next","body");
                  },
                ),
              )),
          Container(
              margin: EdgeInsets.only(left:170,top:240),
              height: 70.0,
              width: 70.0,
              child: FittedBox(
                child: FloatingActionButton(
                  backgroundColor: Color(0xffFF9540),
                  child: Text(
                    'sound',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    data="sound";
                    callbackLog(curState, data, "pressed");
                    callback(curState, "next","sound");
                  },
                ),
              )),
        ])),
      ],
    );
  }
}
