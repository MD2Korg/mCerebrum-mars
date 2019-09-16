import 'package:flutter/material.dart';

class MoodSurfPage2 extends StatefulWidget {
  final String curState;
  final void Function(String, String) callback;

  MoodSurfPage2(this.curState, this.callback);

  @override
  _MoodSurfPage2State createState() => _MoodSurfPage2State();
}

class _MoodSurfPage2State extends State<MoodSurfPage2> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: Stack(
        children: <Widget>[
          Center(
            child: new Image.asset(
              'assets/moodsurf_1.jpg',
              width: size.width,
              height: size.height,

              fit: BoxFit.cover,
            ),
          ),
            Container(child: Column(children: <Widget>[
    SizedBox(height: 180),
    Expanded(child:
    Container(
      padding: EdgeInsets.only(left: 32.0, right: 180.0),
      width: double.infinity,
      child:
    Text("Imagine your thoughts and feelings as a wave...\n \n \nRising\n \nPeaking \n \nFading \n \nAway... ",


    style: TextStyle(
    color: Colors.black)),
    ),
    ),
              Row(
                children: <Widget>[
                  Expanded(child:IconButton(alignment: Alignment.bottomLeft,
                    icon: Icon(Icons.keyboard_arrow_left, color: Colors.white,size: 50,),
                    onPressed: (){
                      widget.callback(widget.curState, "back");
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
                      widget.callback(widget.curState, "next");
                    },
                  ),
                  ),
                ],),
              Container(padding: EdgeInsets.all(10),)

            ],)
            ),

        ],
      ),
    );
  }
}
