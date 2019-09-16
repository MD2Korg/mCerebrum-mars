import 'package:flutter/material.dart';

class MoodSurfPage7 extends StatefulWidget {
  final String curState;
  final void Function(String, String) callback;

  MoodSurfPage7(this.curState, this.callback);

  @override
  _MoodSurfPage7State createState() => _MoodSurfPage7State();
}

class _MoodSurfPage7State extends State<MoodSurfPage7> {

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
    SizedBox(height: 150),
    Expanded(child:
    Container(
      padding: EdgeInsets.all(50),
      width: double.infinity,
      child:
    Text("Some days the water is calm and other days are stormy. \nOnly catch the waves you want to ride and let the others pass you by. ",
    textAlign: TextAlign.right,
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
