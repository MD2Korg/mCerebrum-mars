import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mars/joy/joy_abstract.dart';
import 'package:pie_chart/pie_chart.dart';

class Joy5Timer extends JoyAbstract {
  Joy5Timer(String curState, callback, callbackLog)
      : super(curState, callback, callbackLog, 'assets/joy_0.png', hasVolume:false);
  double curValue = 0;
  bool isRunning = true;

  double getDuration() {
    switch (data) {
      case "1":
        return 60.0;
      case "2":
        return 120.0;
      case "3":
        return 180.0;
      default:
        return 1.0;
    }
  }
  Map<String, double> createDataMap() {
    Map<String, double> dataMap = new Map();
    dataMap.putIfAbsent("Flutter", () => curValue);
    dataMap.putIfAbsent("Ionic", () => (getDuration() - curValue));
    print("duration=" +
        getDuration().toString() +
        " curvalue=" +
        curValue.toString());
    return dataMap;
  }

  Function() refresh;

  @override
  Widget myWidget(BuildContext context, Function() refresh) {
    this.refresh = refresh;
    Map<String, double> m = createDataMap();
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 250),
        ),
        Text(curValue.toString(), style: TextStyle(fontSize: 1)),
        GestureDetector(
            onTap: () {
              if (isRunning) {
                isRunning = false;
                stop();
              } else {
                isRunning = true;
                start();
              }
              refresh();
            },
              child: PieChart(
                dataMap: m,
                animationDuration: Duration(milliseconds: 0),
                chartRadius: MediaQuery.of(context).size.width / 2,
                showChartValuesInPercentage: false,
                showChartValues: false,
                showChartValuesOutside: false,
                chartValuesColor: Colors.blueGrey[900].withOpacity(0),
                showLegends: false,
                colorList: [
                  Color(0xffffe7c1),
                  Color(0xffe2bf85),
                ],
                initialAngle: -3.14 * .5,
              ),
            ),
        !isRunning?Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: 60.0,
              height: 60.0,
              child:FittedBox(
                child: FloatingActionButton(
                  backgroundColor: Color(0xffe2bf85),
                  splashColor: Color(0xffffe7c1),
                  shape: RoundedRectangleBorder(side: BorderSide(),borderRadius: BorderRadius.circular(50)),

                  child: Icon(Icons.play_arrow
                  ),
                  onPressed: ()  {
                    isRunning=true;
                    start();
                    callbackLog(curState, "play_button", "pressed");
                    refresh();
                  },
                ),
              ),
            ),
            Container(
              width: 60.0,
              height: 60.0,
              child:FittedBox(
                child: FloatingActionButton(
                  backgroundColor: Color(0xffe2bf85),
                  splashColor: Color(0xffffe7c1),
                  shape: RoundedRectangleBorder(side: BorderSide(),borderRadius: BorderRadius.circular(50)),

                  child: Icon(Icons.undo
                  ),
                  onPressed: ()  {
                    isRunning=true;
                    curValue = 0;
                    start();
                    callbackLog(curState, "restart_button", "pressed");
                    refresh();
                  },
                ),
              ),
            )
        ],):Container(),
      ],
    );
  }

  @override
  Future<void> stop() async {
    if (t != null) t.cancel();
    t = null;
    return super.stop();
  }

  Timer t;

  @override
  Future<void> init() async {
    curValue = 0;
    return super.init();
  }

  @override
  Future<void> start() async {
    t = Timer.periodic(Duration(seconds: 1), (Timer timer) async{
      curValue = curValue + 1;
      if (curValue > getDuration()) {
        await stop();
        callback(curState, "complete", data);
      } else {
        if (refresh != null) refresh();
//        refresh();
//        if (refresh != null) refresh();
      }
    });
    return super.start();
  }
}
