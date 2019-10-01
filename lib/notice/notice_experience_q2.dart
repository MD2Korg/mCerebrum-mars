import 'package:flutter/material.dart';


class NoticeExperienceQ2 extends StatefulWidget {
  final String curState;
  final void Function(String, String) callback;
  final Map<String, bool> map = {
    'strong': false,
    'weak': false,
    'yes': false,
    'no': false,
  };

  NoticeExperienceQ2(this.curState, this.callback);

  @override
  _NoticeExperienceQ2State createState() => _NoticeExperienceQ2State();

}

class _NoticeExperienceQ2State extends State<NoticeExperienceQ2> {

  Widget build(BuildContext context) {
    return Scaffold(
      body: _myListView(context),
      backgroundColor: Colors.white,

    );
  }

  Widget _myListView(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Column(
      children: <Widget>[
        Expanded(child:
        Column(

            children: <Widget>[
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

                  'Take a moment to answer the following questions about your ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black87, letterSpacing: 1, wordSpacing: 10),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'restlessness',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.red),
                ),
              ),

              Container(
                padding: EdgeInsets.all(10),
                child: Text(

                  'Is it...',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: 130.0,
                    child: SizedBox(
                      child: RaisedButton( color: widget.map["strong"]==true?Colors.deepOrangeAccent[100]: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        child: Text(
                          'Strong',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: ()  {
                          bool res = widget.map["strong"];
                          widget.map["strong"]=!res;
                          widget.map["weak"]=false;
                          setState(() {

                          });


                          //  widget.callback(widget.curState, "wish"),
                        },

                      ),
                    ),
                  ),

                  Container(
                    height: 40.0,
                    width: 130.0,
                    child: SizedBox(
                      child: RaisedButton(
                        color: widget.map["weak"]==true?Colors.deepOrangeAccent[100]: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        child: Text(
                          'Weak',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: ()  {
                          bool res = widget.map["weak"];
                          widget.map["weak"]=!res;
                          widget.map["strong"]=false;
                          setState(() {

                          });


                          //  widget.callback(widget.curState, "wish"),
                        },
                      ),
                    ),
                  ),

                ],),
              Container(
                padding: EdgeInsets.all(30),
                child: Text(

                  'Are there places in your body where you dont feel it? ',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: 130.0,
                    child: SizedBox(
                      child: RaisedButton( color: widget.map["yes"]==true?Colors.deepOrangeAccent[100]: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        child: Text(
                          'Yes',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: ()  {
                          bool res = widget.map["yes"];
                          widget.map["yes"]=!res;
                          widget.map["no"]=false;
                          setState(() {

                          });


                          //  widget.callback(widget.curState, "wish"),
                        },

                      ),
                    ),
                  ),

                  Container(
                    height: 40.0,
                    width: 130.0,
                    child: SizedBox(
                      child: RaisedButton(
                        color: widget.map["no"]==true?Colors.deepOrangeAccent[100]: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        child: Text(
                          'No',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: ()  {
                          bool res = widget.map["no"];
                          widget.map["no"]=!res;
                          widget.map["yes"]=false;
                          setState(() {

                          });


                          //  widget.callback(widget.curState, "wish"),
                        },

                      ),
                    ),
                  ),

                ],),


            ])),

        Row(
          children: <Widget>[
            Expanded(child: IconButton(alignment: Alignment.bottomLeft,
              icon: Icon(
                Icons.keyboard_arrow_left, color: Colors.grey, size: 50,),
              onPressed: () {
                widget.callback(widget.curState, "back");
              },
            ),
            ),
            Expanded(child: IconButton(alignment: Alignment.center,
              icon: Icon(Icons.volume_up, color: Colors.grey, size: 50,),
              onPressed: () {

              },
            ),
            ),
            Expanded(child: IconButton(alignment: Alignment.bottomRight,
              icon: Icon(
                Icons.keyboard_arrow_right, color: Colors.grey, size: 50,),
              onPressed: () {
                widget.callback(widget.curState, "next");
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
