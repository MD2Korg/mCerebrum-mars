import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'moodsurf_abstract.dart';

class MoodSurfPage0 extends MoodSurfAbstract {
  MoodSurfPage0(String curState, callback, callbackLog)
      : super(curState, callback, callbackLog, 'assets/moodsurf_1.png', hasBack:false, hasForward:false);

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
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top:120),
                  width: double.infinity,
                  child: Text(
                      "This exercise will help you\npractice managing stressful\nthoughts and emotions by\nimagining them as waves\nthat ebb and flow.\n\nLet’s try this now.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                      )),
                ),
                Expanded(child:
                new Center(
                  child: Container(
                      width: 90.0,
                      height: 90.0,
                      child:FittedBox(
                        child: FloatingActionButton(
                          backgroundColor: Color(0xff7daaff),
                          splashColor: Color(0xffCBDAF6),
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
                ),
              ],
    );
  }
}
