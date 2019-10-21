import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'imagine_abstract.dart';

class ImagineHasShape extends ImagineAbstract {
  ImagineHasShape(String curState, void Function(String, String, String) callback)
      : super(curState, callback, 'assets/imagine_3.png');

  bool isYes=false;
  bool isNo=false;

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
