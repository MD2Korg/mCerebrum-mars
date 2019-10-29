import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mars/imagine/imagine_abstract.dart';

class Imagine2 extends ImagineAbstract {
  Imagine2(String curState, callback, callbackLog)
      : super(curState, callback, callbackLog, 'assets/imagine_2.png');

  @override
  Widget myWidget(BuildContext context, Function() refresh) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 140),
          child: Text(
            'Take a moment and notice a\nthought or feeling you have now.\n\nImagine it as an object on a\ntable before you.',
            textAlign: TextAlign.center,
            style:
                TextStyle(color: Colors.black54, fontWeight: FontWeight.normal),
          ),
        ),
        Expanded(child: Container()),
        Container(
          child: Text(
            'Look at it for a couple of seconds.',
            textAlign: TextAlign.center,
            style:
            TextStyle(color: Colors.black54, fontWeight: FontWeight.normal),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            'What does it look like?',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(padding: EdgeInsets.only(top:80),)
      ],
    );
  }
}
