import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final String curState;
  final void Function(String, String) callback;

  Menu(this.curState, this.callback);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _myListView(context),
    );
  }

// replace this function with the code in the examples
  Widget _myListView(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          'assets/mars.png',
          width: 100,
          height: 100,
        ),
        Padding(
          padding: EdgeInsets.all(20),
        ),
        GestureDetector(
            onTap: () {
              callback(curState, "moodsurf");
            },
            child: Container(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'moodsurf',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                  Image.asset(
                    'assets/moodsurf.jpg',
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
            )),
        Padding(
          padding: EdgeInsets.all(15),
        ),
        GestureDetector(
            onTap: () {
              callback(curState, "meditate");
            },
            child: Container(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'meditate',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.purpleAccent),
                    ),
                  ),
                  Image.asset(
                    'assets/meditate.png',
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
            )),
        Padding(
          padding: EdgeInsets.all(15),
        ),
        GestureDetector(
            onTap: () {
              callback(curState, "imagine");
            },
            child: Container(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'imagine',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.redAccent),
                    ),
                  ),
                  Image.asset(
                    'assets/imagine.png',
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
            )),
        Padding(
          padding: EdgeInsets.all(15),
        ),
        GestureDetector(
            onTap: () {
              callback(curState, "notice");
            },
            child: Container(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'notice',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.amberAccent),
                    ),
                  ),
                  Image.asset(
                    'assets/notice.png',
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
            )),
        Padding(
          padding: EdgeInsets.all(15),
        ),
        GestureDetector(
            onTap: () {
              callback(curState, "joy");
            },
            child: Container(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'joy',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                  Image.asset(
                    'assets/joy.png',
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
