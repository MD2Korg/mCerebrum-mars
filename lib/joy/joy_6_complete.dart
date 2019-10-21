import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mars/joy/joy_abstract.dart';


class Joy6Complete extends JoyAbstract {
  Joy6Complete(String curState, void Function(String, String,String) callback)
      : super(curState, callback, 'assets/joy_1.png',hasBack:false);

  @override
  Widget myWidget(BuildContext context, Function() refresh) {
    return Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top:120),
                  child: Text(
                      "Complete!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                      )),
                ),
              ],
    );
  }
}
