import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'moodsurf_abstract.dart';

class MoodSurfPage2 extends MoodSurfAbstract {
  MoodSurfPage2(String curState, void Function(String, String, String) callback)
      : super(curState, callback, 'assets/moodsurf_3.png');

  @override
  Widget myWidget(BuildContext context, Function() refresh) {
    return Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top:180)),
          Container(
            padding: EdgeInsets.only(left: 32.0),
            child: Text(
                "Imagine your thoughts and\nemotions as a waves.\nThey ebb and flow.\nRising and falling.\nHere they are\nand there\nthey go.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black)),
          ),
        ],
    );
  }
}
