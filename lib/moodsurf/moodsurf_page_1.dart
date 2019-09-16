import 'package:flutter/material.dart';

class MoodSurfPage1 extends StatefulWidget {
  final String curState;
  final void Function(String, String) callback;

  MoodSurfPage1(this.curState, this.callback);

  @override
  _MoodSurfPage1State createState() => _MoodSurfPage1State();
}

class _MoodSurfPage1State extends State<MoodSurfPage1> {

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
    SizedBox(height: 100),
    Expanded(child:
    Container(
      padding: EdgeInsets.all(50),
      width: double.infinity,
      child:
    Text("Begin by relaxing and focusing on your thoughts and feelings right now. Do not judge them; just acknowledge that they are there.",
    textAlign: TextAlign.center,
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
