import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'imagine_abstract.dart';

class ImagineIntro extends ImagineAbstract {
  ImagineIntro(String curState, void Function(String, String, String) callback)
      : super(curState, callback, 'assets/imagine_1.png', hasBack:false, hasForward:false);

  @override
  Widget myWidget(BuildContext context, Function() refresh) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
          Padding(
            padding: EdgeInsets.all(60),
          ),
          Text(
            'Imagine',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
          Container(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              'People use their imagination\nin many ways to cope.\n\nThis is an exercise using your\nimagination to explore your\nthoughts and feelings.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black87),
            ),
          ),
              Padding(padding: EdgeInsets.only(top:80),),
              Container(
                height: 90.0,
                width: 90.0,
                child: FittedBox(
                  child: FloatingActionButton(
                    backgroundColor: Color(0xffff7d7d),
                    splashColor: Color(0xffffb2b2),
                    shape: RoundedRectangleBorder(side: BorderSide(),borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      'Begin',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      callback(curState, "begin",null);
                    },
                  ),
                ),
              ),

          ]);
  }
}
