import 'package:flutter/material.dart';

class ImagineLike extends StatefulWidget {
  final String curState;
  final void Function(String, String) callback;

  ImagineLike(this.curState, this.callback);

  @override
  _ImagineLikeState createState() => _ImagineLikeState();
}

class _ImagineLikeState extends State<ImagineLike> {
  bool isSelectedUp = false;
  bool isSelectedDown = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new WillPopScope(
        onWillPop: (){
      widget.callback(widget.curState, "back");
      return new Future(() => false);
    } ,
    child:

    Scaffold(
      backgroundColor: Colors.white,
      body:





      //background image here

            Container(child: Column(children: <Widget>[
              SizedBox(height: 200),
              Image.asset(
                'assets/imagine_logo.png',
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
    color: Colors.black)),
      Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        isSelectedDown? IconButton(icon: Icon(Icons.thumb_down, color: Colors.deepOrangeAccent[100], size: 50), onPressed: (){
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
        isSelectedUp? IconButton(icon: Icon(Icons.thumb_up, color: Colors.deepOrangeAccent[100], size: 50), onPressed: (){
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
    ),
    );
  }
}
