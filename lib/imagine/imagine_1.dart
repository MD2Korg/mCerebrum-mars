import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'imagine_abstract.dart';

class Imagine1 extends ImagineAbstract {
  Imagine1(String curState, void Function(String, String, String) callback)
      : super(curState, callback, 'assets/imagine_1.png');

  @override
  Widget myWidget(BuildContext context, Function() refresh) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 120),
        ),
        Container(
          padding: EdgeInsets.all(30),
          child: Text(
            'You may have noticed that\ntrying to get rid of a thought\nor feeling makes it\nstronger.\n\nThis is an exercise to help\ncreate distance between you\nand your unwanted thoughts\nand feelings.',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black87),
          ),
        ),
      ],
    );
  }
}
