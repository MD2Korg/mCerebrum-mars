import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'meditate_abstract.dart';

class MeditateLike extends MeditateAbstract {
  MeditateLike(String curState, callback, callbackLog)
      : super(curState, callback, callbackLog, 'assets/meditate_2.png');

  bool isSelectedUp = false;
  bool isSelectedDown = false;
  @override
  Future<void> init() {
    isSelectedDown=false;
    isSelectedUp=false;
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
      Padding(padding: EdgeInsets.only(top: 200),),
      Text("Was this exercise\nhelpful?",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white)),
      Padding(padding: EdgeInsets.only(top: 20),),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              padding: EdgeInsets.only(top: 40),
              child: isSelectedDown
                  ? IconButton(
                  icon: Icon(FontAwesomeIcons.thumbsDown,
                      color: Color(0xffd650e5)),
                  iconSize: 70,
                  onPressed: () {
                    isSelectedDown = !isSelectedDown;
                    callbackLog(curState, "unlike_button", isSelectedDown?"selected":"unselected");
                      isSelectedUp = false;
                    refresh();
                  })
                  : IconButton(
                  icon: Icon(
                    FontAwesomeIcons.thumbsDown,
                    color: Colors.grey,
                  ),
                  iconSize: 70,
                  onPressed: () {
                    isSelectedDown = !isSelectedDown;
                    callbackLog(curState, "unlike_button", isSelectedDown?"selected":"unselected");
                      isSelectedUp = false;
                    refresh();
                  })),
          SizedBox(
            width: 80,
          ),
          isSelectedUp
              ? IconButton(
              icon: Icon(FontAwesomeIcons.thumbsUp,
                  color: Color(0xffd650e5)),
              iconSize: 70,
              onPressed: () {
                isSelectedUp = !isSelectedUp;
                callbackLog(curState, "like_button", isSelectedUp?"selected":"unselected");
                  isSelectedDown = false;
                refresh();
              })
              : IconButton(
              icon: Icon(
                FontAwesomeIcons.thumbsUp,
                color: Colors.grey,
              ),
              iconSize: 70,
              onPressed: () {
                isSelectedUp = !isSelectedUp;
                callbackLog(curState, "like_button", isSelectedUp?"selected":"unselected");
                  isSelectedDown = false;
                refresh();
              }),
        ],
      )

    ],
    );
  }
}
