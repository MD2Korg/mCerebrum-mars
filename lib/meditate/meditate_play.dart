import 'package:flutter/material.dart';
import 'package:mars/meditate/meditate_abstract.dart';

class MeditatePlay extends MeditateAbstract {
  MeditatePlay(String curState, void Function(String, String, String) callback)
      : super(curState, callback, 'assets/meditate_2.png', hasBack:true, hasForward:true, hasVolume:false);

  @override
  Widget myWidget(BuildContext context, Function() refresh) {
    return Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 120),
      ),
      Container(
        height: 80.0,
        width: 80.0,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: getColor(data),
            onPressed: () {
//              callback(curState, "next", null);
            },
          ),
        ),
      ),

      Text(data,
        textAlign: TextAlign.center,
        style: TextStyle(color: getColor(data)),
      ),
    ]);
  }
  Color getColor(String d){
    switch(d){
      case "peak":return Color(0xff99eafa);
      case "breath":return Color(0xffbc5bf0);
      case "walk":return Color(0xffff94d5);
      case "intro":return Color(0xffa2a2a2);
      case "mind":return Color(0xffc6ff7d);
      case "aware":return Color(0xffFF5959);
      case "body":return Color(0xffD6AB88);
      case "sound":return Color(0xffFF9540);
    }
    return Color(0xff99eafa);
  }
}
