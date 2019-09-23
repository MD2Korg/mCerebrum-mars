import 'package:flutter/material.dart';

class MeditateMenu extends StatefulWidget {
  final String curState;
  final void Function(String, String) callback;

  MeditateMenu(this.curState, this.callback);

  @override
  _MeditateMenuState createState() => _MeditateMenuState();
}

class _MeditateMenuState extends State<MeditateMenu> {
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async{
          widget.callback(widget.curState, "back");
          return false;
        },
        child: Scaffold(body:Container(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/meditate.png',
                  width: 100,
                  height: 100,
                ),
                Text(
                  'meditate',
                  textAlign: TextAlign.right,
//                  textScaleFactor: 1.5,
                  style: TextStyle(color: Colors.white),
                ),
                Padding(
                  padding: EdgeInsets.all(35),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                  Text(
                    'self',
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    height: 70.0,
                    width: 70.0,
                    child: FittedBox(
                      child: FloatingActionButton(
                        backgroundColor: Colors.grey,
                        child: Text(
                          'rock',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () => {
                        widget.callback(widget.curState, "rock"),
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: 70.0,
                    width: 70.0,
                    child: FittedBox(
                      child: FloatingActionButton(
                        backgroundColor: Colors.pink[300],
                        child: Text(
                          'wish',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () => {
                        widget.callback(widget.curState, "wish"),
                        },
                      ),
                    ),
                  ),

                ],),
/*
                ListTile(
                  leading: Text(
                    'self',
                    textAlign: TextAlign.right,
                    textScaleFactor: 1.5,
                    style: TextStyle(color: Colors.white),
                  ),
                  title: Container(
                    height: 80.0,
                    width: 80.0,
                    child: FittedBox(
                      child: FloatingActionButton(
                        backgroundColor: Colors.grey,
                        child: Text(
                          'rock',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () => {},
                      ),
                    ),
                  ),
                  trailing: Container(
                    height: 80.0,
                    width: 80.0,
                    child: FittedBox(
                      child: FloatingActionButton(
                        backgroundColor: Colors.pink[300],
                        child: Text(
                          'wish',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () => {},
                      ),
                    ),
                  ),
                ),
*/
                Padding(
                  padding: EdgeInsets.all(5),
                ),
                ListTile(
                  leading: Text(
                    'breath',
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.white),
                  ),
                  title: Container(
                    height: 70.0,
                    width: 70.0,
                    child: FittedBox(
                      child: FloatingActionButton(
                        backgroundColor: Colors.purple,
                        child: Text(
                          'space',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () {
                          widget.callback(widget.curState, "space");
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                ),
                ListTile(
                  leading: Text(
                    'body',
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.white),
                  ),
                  title: Container(
                    height: 70.0,
                    width: 70.0,
                    child: FittedBox(
                      child: FloatingActionButton(
                        backgroundColor: Colors.lightGreenAccent,
                        child: Text(
                          'flow',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () => {
                        widget.callback(widget.curState, "flow"),
                        },
                      ),
                    ),
                  ),
                  trailing: Container(
                    height: 70.0,
                    width: 70.0,
                    child: FittedBox(
                      child: FloatingActionButton(
                        backgroundColor: Colors.orange,
                        child: Text(
                          'scan',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () => {
                        widget.callback(widget.curState, "scan"),
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                ),
                ListTile(
                  leading: Text(
                    'urge',
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.white),
                  ),
                  title: Container(
                    height: 70.0,
                    width: 70.0,
                    child: FittedBox(
                      child: FloatingActionButton(
                        backgroundColor: Colors.redAccent,
                        child: Text(
                          'wave',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () => {
                        widget.callback(widget.curState, "wave"),
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                ),
              ],
            ))));
  }
}
