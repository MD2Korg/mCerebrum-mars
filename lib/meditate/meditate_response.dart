import 'package:flutter/material.dart';

class MeditateResponse extends StatefulWidget {
  final String curState;
  final void Function(String, String, String) callback;

  MeditateResponse(this.curState, this.callback);

  @override
  _MeditateResponseState createState() => _MeditateResponseState();
}

class _MeditateResponseState extends State<MeditateResponse> {
  bool isSelectedUp = false;
  bool isSelectedDown = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new WillPopScope(
        onWillPop: (){
      widget.callback(widget.curState, "back",null);
      return new Future(() => false);
    } ,
    child:

    Scaffold(

      body:





      //background image here

            Container(child: Column(children: <Widget>[
              SizedBox(height: 200),
              Image.asset(
                'assets/meditate.png',
                width: 70,
                height: 70,
              ),

    Expanded(child:Column(children: <Widget>[
    Container(
      padding: EdgeInsets.all(30),
      width: double.infinity,
    ),
    Text("was this experience useful?",
    textAlign: TextAlign.center,
    style: TextStyle(
    color: Colors.white)),
      Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        isSelectedDown? IconButton(icon: Icon(Icons.thumb_down, color: Colors.purple, size: 50), onPressed: (){
          isSelectedDown=!isSelectedDown;
          if(isSelectedDown==true) isSelectedUp=false;
          setState(() {

          });
        }):IconButton(icon: Icon(Icons.thumb_down, size: 50, color: Colors.grey,), onPressed: (){
          isSelectedDown=!isSelectedDown;
          if(isSelectedDown==true) isSelectedUp=false;
          setState(() {

          });

        }),
        SizedBox(width: 50,),
        isSelectedUp? IconButton(icon: Icon(Icons.thumb_up, color: Colors.purple, size: 50), onPressed: (){
          isSelectedUp=!isSelectedUp;
          if(isSelectedUp==true) isSelectedDown=false;
          setState(() {

          });
        }):IconButton(icon: Icon(Icons.thumb_up, size: 50, color: Colors.grey,), onPressed: (){
          isSelectedUp=!isSelectedUp;
          if(isSelectedUp==true) isSelectedDown=false;
          setState(() {

          });

        }),
      ],)
    ],)

    ),
              Row(
                children: <Widget>[
                  Expanded(child:IconButton(alignment: Alignment.bottomLeft,
                    icon: Icon(Icons.keyboard_arrow_left, color: Colors.white,size: 50,),
                    onPressed: (){
                      widget.callback(widget.curState, "back",null);
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
                      widget.callback(widget.curState, "next",null);
                    },
                  ),
                  ),
                ],),
              Container(padding: EdgeInsets.all(10),)
            ],)
            ),
    ),
    );
  }
}
