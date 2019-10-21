import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mars/joy/joy_abstract.dart';
import 'package:pie_chart/pie_chart.dart';

class Joy5Timer extends JoyAbstract {
  Joy5Timer(String curState, void Function(String, String, String) callback)
      : super(curState, callback, 'assets/joy_0.png');
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
    print("abc.................abc");
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
          onTap: (){
            if(isRunning){

            }
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
        )),
      ],
    );
  }

  @override
  void stop() {
    if (t != null) t.cancel();
  }

  Timer t;

  @override
  void start() {
    curValue = 0;
    t = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      curValue = curValue + 1;
      if (curValue > getDuration()) {
        callback(curState, "complete", data);
      } else {
        if (refresh != null) refresh();
//        refresh();
//        if (refresh != null) refresh();
      }
    });
  }
}
