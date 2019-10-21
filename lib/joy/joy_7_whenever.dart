import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mars/joy/joy_abstract.dart';


class Joy7Whenever extends JoyAbstract {
  Joy7Whenever(String curState, void Function(String, String,String) callback)
      : super(curState, callback, 'assets/joy_0.png');

  @override
  Widget myWidget(BuildContext context, Function() refresh) {
    return Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top:120),
                  child: Text(
                      "Whenever we\'re feeling\nstressed or anxious, it can be\nhelpful to take a moment for\nourselves and reset.\n\nDeep breathing is a great\nway to help us relax.\n\nLooking at photos that\nbring joy can improve\nour mood.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                      )),
                ),
              ],
    );
  }
}
