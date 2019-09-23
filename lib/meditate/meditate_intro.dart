import 'package:flutter/material.dart';

class MeditateIntro extends StatelessWidget {
  final String curState;
  final void Function(String, String) callback;

  MeditateIntro(this.curState, this.callback);

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
      children: <Widget>[
        Expanded(child:
        Column(

            children:<Widget>[
              Padding(
                padding: EdgeInsets.all(25),
              ),
        Image.asset(
          'assets/meditate.png',
          width: 70,
          height: 70,
        ),
        Text(
          'breathspace',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
              Padding(
                padding: EdgeInsets.all(0),
              ),

              Container(
                padding: EdgeInsets.all(30),
                   child: Text(

                  'Brief text intro to specific breathing exercise.  There are a few standalone audio clips that describe mindfulness practice that could be included as optional material as shown in Screen C',
                     textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                            ),
        ),
        Padding(
          padding: EdgeInsets.all(0),
        ),
              Container(
                height: 70.0,
                width: 70.0,
                child: FittedBox(
                  child: FloatingActionButton(
                    backgroundColor: Colors.pink[300],
                    child: Text(
                      'begin',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () => {
                      callback(curState, "begin"),
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
              ),

              Container(
                height: 50.0,
                width: 270.0,
                child: FittedBox(
                  child: RaisedButton(
                   // background: Colors.pink[300],
                    child: Text(
                      'intro to meditation',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () => {
                    //  widget.callback(widget.curState, "wish"),
                    },
                  ),
                ),
              ),


            ])),

        Row(
          children: <Widget>[
            Expanded(child:IconButton(alignment: Alignment.bottomLeft,
              icon: Icon(Icons.keyboard_arrow_left, color: Colors.white,size: 50,),
              onPressed: (){
                callback(curState, "back");
              },
            ),
            ),
            Expanded(child:IconButton(alignment: Alignment.center,
              icon: Icon(Icons.volume_up, color: Colors.white,size: 50,),
              onPressed: (){

              },
            ),
            ),
            Expanded(child: IconButton(alignment: Alignment.bottomRight,
              icon: Icon(Icons.keyboard_arrow_right, color: Colors.white,size: 50,),
              onPressed: (){
                callback(curState, "next");
              },
            ),
            ),
          ],),
        Padding(
          padding: EdgeInsets.all(10),
        ),

      ],
    );
  }
}
