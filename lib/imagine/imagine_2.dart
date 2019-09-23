import 'package:flutter/material.dart';

class Imagine2 extends StatelessWidget {
  final String curState;
  final void Function(String, String) callback;

  Imagine2(this.curState, this.callback);

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

                  'People use their imagination in many ways to cope. This is an exercise to use your imagination to explore your thoughts and emotions.',
                     textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black87),
                            ),
        ),
        Padding(
          padding: EdgeInsets.all(30),
        ),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 70.0,
                    width: 70.0,
                    child: FittedBox(
                      child: FloatingActionButton(
                        backgroundColor: Colors.deepOrangeAccent[100],
                        child: Text(
                          'yes',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () => {
                          callback(curState, "yes"),
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: 70.0,
                    width: 70.0,
                    child: FittedBox(
                      child: FloatingActionButton(
                        backgroundColor: Colors.deepOrangeAccent[100],
                        child: Text(
                          'no ',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () => {
                          callback(curState, "no"),
                        },
                      ),
                    ),
                  ),

                ],),
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
