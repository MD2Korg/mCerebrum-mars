import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mars/joy/joy_abstract.dart';


class Joy0Begin extends JoyAbstract {
  Joy0Begin(String curState, callback, callbackLog)
      : super(curState, callback, callbackLog, 'assets/joy_0.png', hasBack:false, hasForward:false);

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                      "During this exercise you\'ll\npractice relaxing by looking\nat pictures of things you\nenjoy while practicing\ndeep breathing.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                      )),
                ),
                Padding(padding: EdgeInsets.only(top: 120),),
                new Center(
                  child: Container(
                      width: 90.0,
                      height: 90.0,
                      child:FittedBox(
                        child: FloatingActionButton(
                          backgroundColor: Color(0xffffd48f),
                          splashColor: Color(0xfffff4e1),
                          shape: RoundedRectangleBorder(side: BorderSide(),borderRadius: BorderRadius.circular(50)),

                          child: Text(
                            'Begin',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: ()  {
                            callbackLog(curState, "begin_button", "pressed");
                            callback(curState, "next",null);
                          },
                        ),
                      ),
                  ),
                ),
              ],
    );
  }
}
