import 'package:flutter/material.dart';

import 'widget_abstract.dart';

class Menu extends WidgetAbstract {

  Menu(curState, callback, callbackLog) :super(curState, callback, callbackLog, null);

  @override
  _JoyAbstractState createState() => _JoyAbstractState();

  @override
  Widget myWidget(BuildContext context, refresh) {
    return Container();
  }
}
class _JoyAbstractState extends State<Menu> {
  void refresh() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _myListView(context),
    );
  }

// replace this function with the code in the examples
  Widget _myListView(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(padding:EdgeInsets.only(top:20)),
        Image.asset(
          'assets/mars.png',
          width: 100,
          height: 100,
        ),
        Expanded(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          GestureDetector(
              onTap: () {
                widget.callback(widget.curState, "moodsurf",null);
              },
              child: Container(
                padding: EdgeInsets.only( left: 100, right: 30),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'moodsurf',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                      ),
                    ),
                    Image.asset(
                      'assets/moodsurf_logo.png',
                      width: 70,
                      height: 70,
                    ),
                  ],
                ),
              )),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          GestureDetector(
              onTap: () {
                widget.callback(widget.curState, "meditate",null);
              },
              child: Container(
                padding: EdgeInsets.only(left: 100, right: 30),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'meditate',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.purpleAccent, fontSize: 20),
                      ),
                    ),
                    Image.asset(
                      'assets/meditate.png',
                      width: 70,
                      height: 70,
                    ),
                  ],
                ),
              )),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          GestureDetector(
              onTap: () {
                widget.callback(widget.curState, "imagine",null);
              },
              child: Container(
                padding: EdgeInsets.only(left: 100, right: 30),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'imagine',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.redAccent, fontSize: 20),
                      ),
                    ),
                    Image.asset(
                      'assets/imagine.png',
                      width: 70,
                      height: 70,
                    ),
                  ],
                ),
              )),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          GestureDetector(
              onTap: () {
                widget.callback(widget.curState, "notice",null);
              },
              child: Container(
                padding: EdgeInsets.only(left: 100, right: 30),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'notice',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.amberAccent, fontSize: 20),
                      ),
                    ),
                    Image.asset(
                      'assets/notice.png',
                      width: 70,
                      height: 70,
                    ),
                  ],
                ),
              )),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          GestureDetector(
              onTap: () {
                widget.callback(widget.curState, "joy",null);
              },
              child: Container(
                padding: EdgeInsets.only(left: 100, right: 30),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'joy',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.green, fontSize: 20),
                      ),
                    ),
                    Image.asset(
                      'assets/joy.png',
                      width: 70,
                      height: 70,
                    ),
                  ],
                ),
              )),

        ],),),
      ],
    );
  }
}
