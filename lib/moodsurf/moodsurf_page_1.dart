import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'moodsurf_abstract.dart';

class MoodSurfPage1 extends MoodSurfAbstract {
  MoodSurfPage1(String curState, callback, callbackLog)
      : super(curState, callback, callbackLog, 'assets/moodsurf_2.png');

  @override
  Widget myWidget(BuildContext context, Function() refresh) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 120)),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Text("Imagine\nyourself riding\na wave.",
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.black)),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, top: 15),
            child: Text("Simply be aware\nof the wave's\nmovement.",
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.black)),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, top: 15),
            child: Text("Rising",
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.black)),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, top: 15),
            child: Text("Rising",
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.black)),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, top: 15),
//                      width: double.infinity,
//                      width: MediaQuery.of(context).size.width / 2,
            child: Text("Rushing",
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.grey[700])),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, top: 15),
//                      width: double.infinity,
//                      width: MediaQuery.of(context).size.width / 2,
            child: Text("away",
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.grey[500])),
          ),
        ],
      ),
    );
  }
}
