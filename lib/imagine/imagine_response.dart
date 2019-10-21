import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'imagine_abstract.dart';

class ImagineResponse extends ImagineAbstract {
  ImagineResponse(String curState, void Function(String, String, String) callback)
      : super(curState, callback, 'assets/imagine_1.png');
  bool isSmall = false, isLarge = false;
  bool isSmooth = false, isRough = false;
  bool isSoft = false, isHard = false;
  bool isLight = false, isHeavy = false;

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
