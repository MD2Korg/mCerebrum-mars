import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'imagine_abstract.dart';

class ImagineHasShape extends ImagineAbstract {
  ImagineHasShape(String curState, callback, callbackLog)
      : super(curState, callback, callbackLog, 'assets/imagine_3.png');

  bool isYes=false;
  bool isNo=false;
  @override
  Future<void> init() {
    isYes = false;
    isNo = false;
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
          Padding(
            padding: EdgeInsets.all(120),
          ),
          Container(
            padding: EdgeInsets.all(30),
            child: Text(
              'Does it have a\nshape?',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black87),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 90.0,
                width: 90.0,
                child: FittedBox(
                  child: FloatingActionButton(
                    backgroundColor: isYes?Color(0xffe56161):Colors.grey,
                    child: Text(
                      'Yes',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: isYes?Colors.white:Colors.black),
                    ),
                    onPressed: ()  {
                      isYes=!isYes;
                      isNo=false;
                      callbackLog(curState, "yes_button", isYes?"selected":"unselected");
                      refresh();
                    },
                  ),
                ),
              ),
              Container(
                height: 90.0,
                width: 90.0,
                child: FittedBox(
                  child: FloatingActionButton(
                    backgroundColor: isNo?Color(0xffe56161):Colors.grey,
                    child: Text(
                      'No ',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: isNo?Colors.white:Colors.black),
                    ),
                    onPressed: () {
                      isYes=false;
                      isNo=!isNo;
                      callbackLog(curState, "no_button", isNo?"selected":"unselected");
                      refresh();
                    },
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15),
          ),
      ],
    );
  }
}
