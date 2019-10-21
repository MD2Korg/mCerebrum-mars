import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class WidgetAbstract extends StatefulWidget {
  final String curState;
  String data;
  final void Function(String, String, String) callback;
  final String backgroundImage;
  final bool hasBack;
  final bool hasForward;
  final bool hasVolume;
  final bool hasLowerBar;

  WidgetAbstract(this.curState, this.callback, this.backgroundImage, {this.hasBack=true, this.hasForward=true, this.hasVolume=true,this.hasLowerBar=true});

  Widget myWidget(BuildContext context, Function() refresh);
  start(){}
  stop(){}
  String getData(){
    return data;
  }

}
