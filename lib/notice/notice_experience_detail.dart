import 'package:flutter/material.dart';

class NoticeExperienceDetail extends StatelessWidget {
  final String curState;
  final void Function(String, String) callback;

  NoticeExperienceDetail(this.curState, this.callback);

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

              Container(
                padding: EdgeInsets.all(0),
                   child: Text(

                  'Take a couple of \nminutes and \nfocus on \nyour',
                     textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black87, letterSpacing: 1, wordSpacing: 10),
                            ),
        ),
              Container(
                padding: EdgeInsets.all(30),
                child: Text(

                  'restlessness',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.red),
                ),
              ),

              Container(
                padding: EdgeInsets.all(25),
                child: Text(

                  'Remember these are just sensations, even though your mind may label them as "good" or "bad"; you can simply allow them to be present, notice and acccept them for what they are, wothout judgement ',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
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
