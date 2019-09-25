import 'package:flutter/material.dart';

class ImagineResponse extends StatelessWidget {
  final String curState;
  final void Function(String, String) callback;
  int sl=0;

  ImagineResponse(this.curState, this.callback);

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
          'Is it...\n \n(Select all that apply)',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
              Padding(
                padding: EdgeInsets.all(0),
              ),

        Padding(
          padding: EdgeInsets.all(30),
        ),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 50.0,
                    width: 130.0,
                    child: FittedBox(
                      child: RaisedButton(
                        // background: Colors.pink[300],
                        child: Text(
                          'Small',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: ()  {
                          sl=1;
                          //  widget.callback(widget.curState, "wish"),
                        },
                      ),
                    ),
                  ),
                  Container(child: Text(
                    'or',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),),
                  Container(
                    height: 50.0,
                    width: 130.0,
                    child: FittedBox(
                        child:RaisedButton(
                          // background: Colors.pink[300],
                          child: Text(
                            'Large',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () {
                            sl=1;

                          }
                        ),
                    ),
                  ),

                ],),
              Padding(
                padding: EdgeInsets.all(5),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 50.0,
                    width: 130.0,
                    child: FittedBox(
                      child: RaisedButton(
                        // background: Colors.pink[300],
                        child: Text(
                          'Smooth',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () => {
                          //  widget.callback(widget.curState, "wish"),
                        },
                      ),
                    ),
                  ),
                  Container(child: Text(
                    'or',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),),
                  Container(
                    height: 50.0,
                    width: 130.0,
                    child: FittedBox(
                      child:RaisedButton(
                        // background: Colors.pink[300],
                        child: Text(
                          'Rough',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () => {
                          //  widget.callback(widget.curState, "wish"),
                        },
                      ),
                    ),
                  ),

                ],),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 50.0,
                    width: 130.0,
                    child: FittedBox(
                      child: RaisedButton(
                        // background: Colors.pink[300],
                        child: Text(
                          'Soft',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () => {
                          //  widget.callback(widget.curState, "wish"),
                        },
                      ),
                    ),
                  ),
                  Container(child: Text(
                    'or',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),),

                  Container(
                    height: 50.0,
                    width: 130.0,
                    child: FittedBox(
                      child:RaisedButton(
                        // background: Colors.pink[300],
                        child: Text(
                          'Hard',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () => {
                          //  widget.callback(widget.curState, "wish"),
                        },
                      ),
                    ),
                  ),

                ],),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 50.0,
                    width: 130.0,
                    child: FittedBox(
                      child: RaisedButton(
                        // background: Colors.pink[300],
                        child: Text(
                          'Light',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () => {
                          //  widget.callback(widget.curState, "wish"),
                        },
                      ),
                    ),
                  ),
                  Container(child: Text(
                    'or',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),),

                  Container(
                    height: 50.0,
                    width: 130.0,
                    child: FittedBox(
                      child: RaisedButton(
                        // background: Colors.pink[300],
                        child: Text(
                          'Heavy',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () => {
                          //  widget.callback(widget.curState, "wish"),
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
