import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'imagine_abstract.dart';

class ImagineResponse extends ImagineAbstract {
  ImagineResponse(String curState, callback, callbackLog)
      : super(curState, callback, callbackLog, 'assets/imagine_1.png');
  bool isSmall = false, isLarge = false;
  bool isSmooth = false, isRough = false;
  bool isSoft = false, isHard = false;
  bool isLight = false, isHeavy = false;
  @override
  Future<void> start() {
    return super.start();
  }
  @override
  Future<void> stop() {
    return super.stop();
  }

  @override
  Future<void> init() async{
    isSmall = false;
    isLarge = false;
    isSmooth = false;
    isRough = false;
    isSoft = false;
    isHard = false;
    isLight = false;
    isHeavy = false;
    return super.init();
  }
  @override
  Widget myWidget(BuildContext context, Function() refresh) {
    return Column(
      children: <Widget>[
          Padding(
            padding: EdgeInsets.all(70),
          ),
          Text(
            'Is what you\'re imaging...',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          Text(
            '(Select all that apply)',
            textAlign: TextAlign.center,
            style:
                TextStyle(color: Colors.black54, fontWeight: FontWeight.normal),
          ),
          Padding(
            padding: EdgeInsets.all(30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                height: 60.0,
                width: 150.0,
                child: FittedBox(
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                    ),
                    color: isSmall ? Color(0xffE56161) : Color(0xFFB3B4B5),
                    child: Text(
                      'Small',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: isSmall ? Colors.white : Colors.black),
                    ),
                    onPressed: () {
                      isLarge = false;
                      isSmall = !isSmall;
                      callbackLog(curState, "small_button", isSmall?"selected":"unselected");
                      refresh();
                    },
                  ),
                ),
              ),
              Container(
                child: Text(
                  'or',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Container(
                height: 60.0,
                width: 150.0,
                child: FittedBox(
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                    ),
                    color: isLarge ? Color(0xffE56161) : Color(0xFFB3B4B5),
                    child: Text(
                      'Large',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: isLarge ? Colors.white : Colors.black),
                    ),
                    onPressed: () {
                      isSmall = false;
                      isLarge = !isLarge;
                      callbackLog(curState, "large_button", isLarge?"selected":"unselected");
                      refresh();
                    },
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                height: 60.0,
                width: 150.0,
                child: FittedBox(
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                    ),
                    color: isSmooth ? Color(0xffE56161) : Color(0xFFB3B4B5),
                    child: Text(
                      'Smooth',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: isSmooth ? Colors.white : Colors.black),
                    ),
                    onPressed: () {
                      isRough = false;
                      isSmooth = !isSmooth;
                      callbackLog(curState, "smooth_button", isSmooth?"selected":"unselected");
                      refresh();
                    },
                  ),
                ),
              ),
              Container(
                child: Text(
                  'or',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Container(
                height: 60.0,
                width: 150.0,
                child: FittedBox(
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                    ),
                    color: isRough ? Color(0xffE56161) : Color(0xFFB3B4B5),
                    child: Text(
                      'Rough',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: isRough ? Colors.white : Colors.black),
                    ),
                    onPressed: () {
                      isSmooth = false;
                      isRough = !isRough;
                      callbackLog(curState, "rough_button", isRough?"selected":"unselected");
                      refresh();
                    },
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                height: 60.0,
                width: 150.0,
                child: FittedBox(
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                    ),
                    color: isSoft ? Color(0xffE56161) : Color(0xFFB3B4B5),
                    child: Text(
                      'Soft',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: isSoft ? Colors.white : Colors.black),
                    ),
                    onPressed: () {
                      isHard = false;
                      isSoft = !isSoft;
                      callbackLog(curState, "soft_button", isSoft?"selected":"unselected");
                      refresh();
                    },
                  ),
                ),
              ),
              Container(
                child: Text(
                  'or',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Container(
                height: 60.0,
                width: 150.0,
                child: FittedBox(
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                    ),
                    color: isHard ? Color(0xffE56161) : Color(0xFFB3B4B5),
                    child: Text(
                      'Hard',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: isHard ? Colors.white : Colors.black),
                    ),
                    onPressed: () {
                      isSoft = false;
                      isHard = !isHard;
                      callbackLog(curState, "hard_button", isHard?"selected":"unselected");
                      refresh();
                    },
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                height: 60.0,
                width: 150.0,
                child: FittedBox(
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                    ),
                    color: isLight ? Color(0xffE56161) : Color(0xFFB3B4B5),
                    child: Text(
                      'Light',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: isLight ? Colors.white : Colors.black),
                    ),
                    onPressed: () {
                      isHeavy = false;
                      isLight = !isLight;
                      callbackLog(curState, "light_button", isLight?"selected":"unselected");
                      refresh();
                    },
                  ),
                ),
              ),
              Container(
                child: Text(
                  'or',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Container(
                height: 60.0,
                width: 150.0,
                child: FittedBox(
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                    ),
                    color: isHeavy ? Color(0xffE56161) : Color(0xFFB3B4B5),
                    child: Text(
                      'Heavy',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: isHeavy ? Colors.white : Colors.black),
                    ),
                    onPressed: () {
                      isLight = false;
                      isHeavy = !isHeavy;
                      callbackLog(curState, "heavy_button", isHeavy?"selected":"unselected");
                      refresh();
                    },
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
