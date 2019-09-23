import 'package:flutter/material.dart';

class Imagine1 extends StatelessWidget {
  final String curState;
  final void Function(String, String) callback;

  Imagine1(this.curState, this.callback);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _myListView(context),
      backgroundColor: Colors.white,

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
          'assets/imagine_logo.png',
          width: 70,
          height: 70,
        ),
              Padding(
                padding: EdgeInsets.all(30),
              ),
        Text(
          'Imagine',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
              Padding(
                padding: EdgeInsets.all(0),
              ),

              Container(
                padding: EdgeInsets.all(30),
                   child: Text(

                  'You may have noticed that trying to get rid of a thought or emotion makes it feel stronger. This is an exercise to help make unwanted emotions weaker.',
                     textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black87),
                            ),
        ),
        Padding(
          padding: EdgeInsets.all(30),
        ),

              Padding(
                padding: EdgeInsets.all(15),
              ),



            ])),

        Row(
          children: <Widget>[
            Expanded(child:IconButton(alignment: Alignment.bottomLeft,
              icon: Icon(Icons.keyboard_arrow_left, color: Colors.grey,size: 50,),
              onPressed: (){
                callback(curState, "back");
              },
            ),
            ),
            Expanded(child:IconButton(alignment: Alignment.center,
              icon: Icon(Icons.volume_up, color: Colors.grey,size: 50,),
              onPressed: (){

              },
            ),
            ),
            Expanded(child: IconButton(alignment: Alignment.bottomRight,
              icon: Icon(Icons.keyboard_arrow_right, color: Colors.grey,size: 50,),
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
