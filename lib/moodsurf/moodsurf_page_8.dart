import 'package:flutter/material.dart';

class MoodSurfPage8 extends StatefulWidget {
  final String curState;
  final void Function(String, String) callback;

  MoodSurfPage8(this.curState, this.callback);

  @override
  _MoodSurfPage8State createState() => _MoodSurfPage8State();
}

class _MoodSurfPage8State extends State<MoodSurfPage8> {
  bool isSelectedUp = false;
  bool isSelectedDown = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: Stack(
        children: <Widget>[
          Center(
            child: new Image.asset(
              'assets/moodsurf_3.png',
              width: size.width,
              height: size.height,

              fit: BoxFit.cover,
            ),
          ),
            Container(child: Column(children: <Widget>[
    SizedBox(height: 200),
    Expanded(child:Column(children: <Widget>[
    Container(
      padding: EdgeInsets.all(45),
      width: double.infinity,
    ),
    Text("was this experience useful?",
    textAlign: TextAlign.center,
    style: TextStyle(
    color: Colors.black)),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        isSelectedDown? IconButton(icon: Icon(Icons.thumb_down, color: Colors.white, size: 50), onPressed: (){
          isSelectedDown=!isSelectedDown;
          if(isSelectedDown==true) isSelectedUp=false;
          setState(() {

          });
        }):IconButton(icon: Icon(Icons.thumb_down, size: 50, color: Colors.lightBlue,), onPressed: (){
          isSelectedDown=!isSelectedDown;
          if(isSelectedDown==true) isSelectedUp=false;
          setState(() {

          });

        }),
        SizedBox(width: 50,),
        isSelectedUp? IconButton(icon: Icon(Icons.thumb_up, color: Colors.white, size: 50), onPressed: (){
          isSelectedUp=!isSelectedUp;
          if(isSelectedUp==true) isSelectedDown=false;
          setState(() {

          });
        }):IconButton(icon: Icon(Icons.thumb_up, size: 50, color: Colors.lightBlue,), onPressed: (){
          isSelectedUp=!isSelectedUp;
          if(isSelectedUp==true) isSelectedDown=false;
          setState(() {

          });

        }),
      ],)
    ],)

    ),
              Padding(
                padding: EdgeInsets.all(100),
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
