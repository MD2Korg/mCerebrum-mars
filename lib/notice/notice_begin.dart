import 'package:flutter/material.dart';

class NoticeBegin extends StatelessWidget {
  final String curState;
  final void Function(String, String) callback;

  NoticeBegin(this.curState, this.callback);

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
          'assets/notice_white.png',
          width: 70,
          height: 70,
        ),
              Padding(
                padding: EdgeInsets.all(15),
              ),
        Text(
          'notice',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
              Padding(
                padding: EdgeInsets.all(0),
              ),

              Container(
                padding: EdgeInsets.all(30),
                   child: Text(

                  'Sometimes we experience thoughts or emotions as uncomfortable physical sensations. Accepting that these sensations sometimes occur is one way to deal with these experiences.',
                     textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black87),
                            ),
        ),
        Padding(
          padding: EdgeInsets.all(30),
        ),
              Container(
                height: 70.0,
                width: 70.0,
                child: FittedBox(
                  child: FloatingActionButton(
                    backgroundColor: Colors.deepOrangeAccent[100],
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
