import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'imagine_abstract.dart';

class Imagine0Begin extends ImagineAbstract {
  Imagine0Begin(String curState, callback, callbackLog)
      : super(curState, callback, callbackLog, 'assets/imagine_1.png', hasBack:false, hasForward:false);
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
          Padding(
            padding: EdgeInsets.all(60),
          ),
          Text(
            'Imagine',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
          Container(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              'People use their imagination\nin many ways to cope.\n\nThis is an exercise using your\nimagination to explore your\nthoughts and feelings.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black87),
            ),
          ),
              Padding(padding: EdgeInsets.only(top:80),),
              Container(
                height: 90.0,
                width: 90.0,
                child: FittedBox(
                  child: FloatingActionButton(
                    backgroundColor: Color(0xffff7d7d),
                    splashColor: Color(0xffffb2b2),
                    shape: RoundedRectangleBorder(side: BorderSide(),borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      'Begin',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      callbackLog(curState, "begin_button", "pressed");
                      callback(curState, "next",null);
                    },
                  ),
                ),
              ),

          ]);
  }
}
