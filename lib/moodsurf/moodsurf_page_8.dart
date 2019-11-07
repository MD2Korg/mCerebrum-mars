import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mars/moodsurf/moodsurf_abstract.dart';

class MoodSurfPage8 extends MoodSurfAbstract {
  MoodSurfPage8(String curState, callback, callbackLog)
      : super(curState, callback, callbackLog, 'assets/moodsurf_7.png');

  bool isSelectedUp = false;
  bool isSelectedDown = false;
  @override
  Future<void> init() async{
    isSelectedUp = false;
    isSelectedDown = false;
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
          style: TextStyle(color: Colors.black)),
      Padding(padding: EdgeInsets.only(top: 20),),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              padding: EdgeInsets.only(top: 40),
              child: isSelectedDown
                  ? IconButton(
                  icon: Icon(FontAwesomeIcons.thumbsDown,
                      color: Colors.white),
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
                    color: Colors.black,
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
                  color: Colors.white),
              iconSize: 70,
              onPressed: () {
                isSelectedUp = !isSelectedUp;
                  isSelectedDown = false;
                callbackLog(curState, "like_button", isSelectedUp?"selected":"unselected");
                refresh();
              })
              : IconButton(
              icon: Icon(
                FontAwesomeIcons.thumbsUp,
                color: Colors.black,
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
