import 'package:flutter/material.dart';

class NoticeExperience extends StatefulWidget {
  final String curState;
  final void Function(String, String) callback;
  final Map<String, bool> map = {
    'tension': false,
    'calmness': false,
    'shakiness': false,
    'stillness': false,
    'pain': false,
    'joy': false,
    'cig_craving': false,
    'contentment': false,
    'restlessness': false,
    'fluttering': false,
    'irritability': false,
    'excitement': false,
    'other_physical_sensation': false,
  };

  int noneOfThemAbove = 0;
    NoticeExperience(this.curState, this.callback);

  @override
  _NoticeExperienceState createState() => _NoticeExperienceState();
}

class _NoticeExperienceState extends State<NoticeExperience> {



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
                padding: EdgeInsets.all(5),
              ),
        Text(
          'Are you experiencing any...\n(select all that apply)',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
              Padding(
                padding: EdgeInsets.all(5),
              ),

        Padding(
          padding: EdgeInsets.all(5),
        ),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: 130.0,
                    child: SizedBox(
                      child: RaisedButton(
                        color: widget.map["tension"]==true?Colors.deepOrangeAccent[100]: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        child: Text(
                          'tension',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: ()  {
                          bool res = widget.map["tension"];
                          widget.map["tension"]=!res;
                          widget.noneOfThemAbove=-1;
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
                          color: widget.map["calmness"]==true?Colors.deepOrangeAccent[100]: Colors.white,
                          shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                          child: Text(
                            'calmness',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: ()  {
                            bool res = widget.map["calmness"];
                            widget.map["calmness"]=!res;
                            widget.noneOfThemAbove=-1;
                            setState(() {

                            });

                            //  widget.callback(widget.curState, "wish"),
                          },
                        ),
                    ),
                  ),

                ],),
              Padding(
                padding: EdgeInsets.all(5),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: 130.0,
                    child: SizedBox(
                      child: RaisedButton(
                        color: widget.map["shakiness"]==true?Colors.deepOrangeAccent[100]: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        child: Text(
                          'shakiness',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: ()  {
                          bool res = widget.map["shakiness"];
                          widget.map["shakiness"]=!res;
                          widget.noneOfThemAbove=-1;
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
                        color: widget.map["stillness"]==true?Colors.deepOrangeAccent[100]: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        child: Text(
                          'stillness',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: ()  {
                          bool res = widget.map["stillness"];
                          widget.map["stillness"]=!res;
                          widget.noneOfThemAbove=-1;
                          setState(() {

                          });

                          //  widget.callback(widget.curState, "wish"),
                        },),
                    ),
                  ),

                ],),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: 130.0,
                    child: SizedBox(
                      child: RaisedButton(
                        color: widget.map["pain"]==true?Colors.deepOrangeAccent[100]: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        child: Text(
                          'pain',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: ()  {
                          bool res = widget.map["pain"];
                          widget.map["pain"]=!res;
                          widget.noneOfThemAbove=-1;
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
                        color: widget.map["joy"]==true?Colors.deepOrangeAccent[100]: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        child: Text(
                          'joy',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: ()  {
                          bool res = widget.map["joy"];
                          widget.map["joy"]=!res;
                          widget.noneOfThemAbove=-1;
                          setState(() {

                          });

                          //  widget.callback(widget.curState, "wish"),
                        },),
                    ),
                  ),

                ],),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: 130.0,
                    child: SizedBox(
                      child: RaisedButton(
                        color: widget.map["cig_craving"]==true?Colors.deepOrangeAccent[100]: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        child: Text(
                          'cig craving',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: ()  {
                          bool res = widget.map["cig_craving"];
                          widget.map["cig_craving"]=!res;
                          widget.noneOfThemAbove=-1;
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
                        color: widget.map["contentment"]==true?Colors.deepOrangeAccent[100]: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        child: Text(
                          'contentment',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: ()  {
                          bool res = widget.map["contentment"];
                          widget.map["contentment"]=!res;
                          widget.noneOfThemAbove=-1;
                          setState(() {

                          });

                          //  widget.callback(widget.curState, "wish"),
                        },
                      ),
                    ),
                  ),

                ],),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: 130.0,
                    child: SizedBox(
                      child: RaisedButton(
                        color: widget.map["restlessness"]==true?Colors.deepOrangeAccent[100]: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        child: Text(
                          'restlessness',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: ()  {
                          bool res = widget.map["restlessness"];
                          widget.map["restlessness"]=!res;
                          widget.noneOfThemAbove=-1;
                          setState(() {

                          });

                          //  widget.callback(widget.curState, "wish"),
                        },                      ),
                    ),
                  ),

                  Container(
                    height: 40.0,
                    width: 130.0,
                    child: SizedBox(
                      child: RaisedButton( color: widget.map["fluttering"]==true?Colors.deepOrangeAccent[100]: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        child: Text(
                          'fluttering',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: ()  {
                          bool res = widget.map["fluttering"];
                          widget.map["fluttering"]=!res;
                          widget.noneOfThemAbove=-1;
                          setState(() {

                          });

                          //  widget.callback(widget.curState, "wish"),
                        },
                      ),
                    ),
                  ),

                ],),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: 130.0,
                    child: SizedBox(
                      child: RaisedButton(
                        color: widget.map["irritability"]==true?Colors.deepOrangeAccent[100]: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        child: Text(
                          'irritability',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: ()  {
                          bool res = widget.map["irritability"];
                          widget.map["irritability"]=!res;
                          widget.noneOfThemAbove=-1;
                          setState(() {

                          });

                          //  widget.callback(widget.curState, "wish"),
                        },                      ),
                    ),
                  ),

                  Container(
                    height: 40.0,
                    width: 130.0,
                    child: SizedBox(
                      child: RaisedButton( color: widget.map["excitement"]==true?Colors.deepOrangeAccent[100]: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        child: Text(
                          'excitement',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: ()  {
                          bool res = widget.map["excitement"];
                          widget.map["excitement"]=!res;
                          widget.noneOfThemAbove=-1;
                          setState(() {

                          });

                          //  widget.callback(widget.curState, "wish"),
                        },
                      ),
                    ),
                  ),

                ],),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 50.0,
                    width: 230.0,
                    child: FittedBox(
                      child: RaisedButton( color: widget.map["other_physical_sensation"]==true?Colors.deepOrangeAccent[100]: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        child: Text(
                          'other physical sensation',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: ()  {
                          bool res = widget.map["other_physical_sensation"];
                          widget.map["other_physical_sensation"]=!res;
                          widget.noneOfThemAbove=-1;
                          setState(() {

                          });

                          //  widget.callback(widget.curState, "wish"),
                        },),
                    ),
                  ),

                ],),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 50.0,
                    width: 230.0,
                    child: FittedBox(
                      child: RaisedButton( color: widget.noneOfThemAbove==1?Colors.deepOrangeAccent[100]: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        child: Text(
                          'none of them above',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: ()  {
                        widget.noneOfThemAbove=1;
                                widget.map["tension"] = false;
                                widget.map["calmness"] = false;
                                widget.map["shakiness"] = false;
                                widget.map["stillness"] = false;
                                widget.map["pain"] = false;
                                widget.map["joy"] = false;
                                widget.map["cig_craving"] = false;
                                widget.map["contentment"] = false;
                                widget.map["restlessness"] = false;
                                widget.map["fluttering"] = false;
                                widget.map["irritability"] = false;
                                widget.map["excitement"] = false;
                                widget.map["other_physical_sensation"] = false;
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



