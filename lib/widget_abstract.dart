import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class WidgetAbstract extends StatefulWidget {
  final String curState;
  String data;
  final void Function(String, String, String) callback;
  final void Function(String, String, String) callbackLog;
  final String backgroundImage;
  final bool hasBack;
  final bool hasForward;
  final bool hasVolume;
  final bool hasLowerBar;

  WidgetAbstract(this.curState, this.callback, this.callbackLog, this.backgroundImage, {this.hasBack=true, this.hasForward=true, this.hasVolume=true,this.hasLowerBar=true});

  Widget myWidget(BuildContext context, Function() refresh);
  Future<void> init() async{
    return null;
  }
  Future<void> start() async{
    return null;
  }
  Future<void> stop() async{
    return null;
  }
  String getData(){
    return data;
  }

}
