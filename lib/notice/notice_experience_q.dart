import 'package:flutter/material.dart';


class NoticeExperienceQ extends StatefulWidget {
  final String curState;
  final void Function(String, String) callback;
  final Map<String, bool> map = {
    'one': false,
    'multiple':false,
    'changing': false,
    'same': false
  };


  NoticeExperienceQ(this.curState, this.callback);

  @override
  _NoticeExperienceQState createState() => _NoticeExperienceQState();
}

class _NoticeExperienceQState extends State<NoticeExperienceQ> {


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

                  'Take a moment to answer the following questions about your ',
                     textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black87, letterSpacing: 1, wordSpacing: 10),
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

                  'is it in one place or multiple places in your body? ',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: 130.0,
                    child: SizedBox(
                      child: RaisedButton(
                        color: widget.map["one"]==true?Colors.deepOrangeAccent[100]: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        child: Text(
                          'One',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: ()  {
                          bool res = widget.map["one"];
                          widget.map["one"]=!res;
                          widget.map["multiple"]=false;
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
                      child:RaisedButton(
                        color: widget.map["multiple"]==true?Colors.deepOrangeAccent[100]: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        child: Text(
                          'Multiple',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: ()  {
                          bool res = widget.map["multiple"];
                          widget.map["multiple"]=!res;
                          widget.map["one"]=false;
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

                  'is it changing or does it always stay the same? ',
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
                      child: RaisedButton(
                        color: widget.map["changing"]==true?Colors.deepOrangeAccent[100]: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        child: Text(
                          'Changing',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: ()  {
                          bool res = widget.map["changing"];
                          widget.map["changing"]=!res;
                          widget.map["same"]=false;
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
                      child:RaisedButton(
                        color: widget.map["same"]==true?Colors.deepOrangeAccent[100]: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        child: Text(
                          'Same',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: ()  {
                          bool res = widget.map["same"];
                          widget.map["same"]=!res;
                          widget.map["changing"]=false;
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
            Expanded(child:IconButton(alignment: Alignment.bottomLeft,
              icon: Icon(Icons.keyboard_arrow_left, color: Colors.grey,size: 50,),
              onPressed: (){
                widget.callback(widget.curState, "back");
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
