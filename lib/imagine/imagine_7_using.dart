import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'imagine_abstract.dart';

class ImagineUsing extends ImagineAbstract {
  ImagineUsing(String curState, callback, callbackLog)
      : super(curState, callback, callbackLog, 'assets/imagine_5.png');
  @override
  Future<void> init() {
    return super.init();
  }
  @override
  Future<void> start() {
    return super.start();
  }
  @override
  Future<void> stop() {
    return super.stop();
  }

  @override
  Widget myWidget(BuildContext context, Function() refresh) {
    return Column(
      children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 170),
            child: Text(
              'Using your imagination\ncan help you gain\na sense of control by\ndistancing yourself from\nunwanted thoughts or feelings.\n\nIf you feel overwhelmed or\nstruggle to focus, try this exercise.\n',
              textAlign: TextAlign.center,
            ),
          ),
      ],
    );
  }
}
