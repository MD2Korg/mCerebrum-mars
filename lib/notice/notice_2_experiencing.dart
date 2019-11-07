import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import 'notice_abstract.dart';

class NoticeExperience extends NoticeAbstract {
   Map<String, bool> map;
   int noneOfThemAbove;
  @override
  Future<void> init() async{
    noneOfThemAbove = 0;
    map = {
      'tension': false,
      'calmness': false,
      'shakiness': false,
      'stillness': false,
      'pain': false,
      'warmth': false,
      'tightness': false,
      'sweatiness': false,
      'restlessness': false,
      'fluttering': false,
      'irritability': false,
      'soreness': false,
      'other_physical_sensation': false,
    };
    return super.init();
  }
   @override
   Future<void> start() {
     return super.start();
   }
   @override
   Future<void> stop() {
     return super.stop();
   }

  NoticeExperience(String curState, callback, callbackLog)
      : super(curState, callback, callbackLog, 'assets/notice_1.png');
  @override
  Widget myWidget(BuildContext context, Function() refresh) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              Padding(padding:EdgeInsets.only(top:40)),
        Text(
          'Are you experiencing any...\n(Select all that apply)',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
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
                        color: map["tension"]==true?Color(0xfffbb299): Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black), borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          'tension',
                          textAlign: TextAlign.center,
                        ),
                        onPressed: ()  {
                          bool res = map["tension"];
                          map["tension"]=!res;
                          noneOfThemAbove=-1;
                          callbackLog(curState, "tension_button", map["tension"]?"selected":"unselected");
                         refresh();
                        },
                      ),
                    ),
                  ),

                  Container(
                    height: 40.0,
                    width: 130.0,
                    child: SizedBox(
                        child:RaisedButton(
                          color: map["calmness"]==true?Color(0xfffbb299): Colors.white,
                          shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black), borderRadius: BorderRadius.circular(8)),
                          child: Text(
                            'calmness',
                            textAlign: TextAlign.center,
                          ),
                          onPressed: ()  {
                            bool res = map["calmness"];
                            map["calmness"]=!res;
                            noneOfThemAbove=-1;
                            callbackLog(curState, "calmness_button", map["calmness"]?"selected":"unselected");
                            refresh();
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
                        color: map["shakiness"]==true?Color(0xfffbb299): Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black), borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          'shakiness',
                          textAlign: TextAlign.center,
                        ),
                        onPressed: ()  {
                          bool res = map["shakiness"];
                          map["shakiness"]=!res;
                          noneOfThemAbove=-1;
                          callbackLog(curState, "shakiness_button", map["shakiness"]?"selected":"unselected");
                          refresh();

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
                        color: map["stillness"]==true?Color(0xfffbb299): Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black), borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          'stillness',
                          textAlign: TextAlign.center,
                        ),
                        onPressed: ()  {
                          bool res = map["stillness"];
                          map["stillness"]=!res;
                          callbackLog(curState, "stillness_button", map["stillness"]?"selected":"unselected");
                          noneOfThemAbove=-1;
                          refresh();

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
                        color: map["pain"]==true?Color(0xfffbb299): Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black), borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          'pain',
                          textAlign: TextAlign.center,
                        ),
                        onPressed: ()  {
                          bool res = map["pain"];
                          map["pain"]=!res;
                          callbackLog(curState, "pain_button", map["pain"]?"selected":"unselected");
                          noneOfThemAbove=-1;
                          refresh();
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
                        color: map["warmth"]==true?Color(0xfffbb299): Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black), borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          'warmth',
                          textAlign: TextAlign.center,
                        ),
                        onPressed: ()  {
                          bool res = map["warmth"];
                          map["warmth"]=!res;
                          callbackLog(curState, "warmth_button", map["warmth"]?"selected":"unselected");
                          noneOfThemAbove=-1;
                          refresh();

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
                        color: map["tightness"]==true?Color(0xfffbb299): Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black), borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          'tightness',
                          textAlign: TextAlign.center,
                        ),
                        onPressed: ()  {
                          bool res = map["tightness"];
                          map["tightness"]=!res;
                          callbackLog(curState, "tightness_button", map["tightness"]?"selected":"unselected");
                          noneOfThemAbove=-1;
                          refresh();

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
                        color: map["sweatiness"]==true?Color(0xfffbb299): Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black), borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          'sweatiness',
                          textAlign: TextAlign.center,
                        ),
                        onPressed: ()  {
                          bool res = map["sweatiness"];
                          map["sweatiness"]=!res;
                          noneOfThemAbove=-1;
                          callbackLog(curState, "sweatiness_button", map["sweatiness"]?"selected":"unselected");
                          refresh();

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
                        color: map["restlessness"]==true?Color(0xfffbb299): Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black), borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          'restlessness',
                          textAlign: TextAlign.center,
                        ),
                        onPressed: ()  {
                          bool res = map["restlessness"];
                          map["restlessness"]=!res;
                          noneOfThemAbove=-1;
                          callbackLog(curState, "restlessness_button", map["restlessness"]?"selected":"unselected");
                          refresh();

                          //  widget.callback(widget.curState, "wish"),
                        },                      ),
                    ),
                  ),

                  Container(
                    height: 40.0,
                    width: 130.0,
                    child: SizedBox(
                      child: RaisedButton( color: map["fluttering"]==true?Color(0xfffbb299): Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black), borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          'fluttering',
                          textAlign: TextAlign.center,
                        ),
                        onPressed: ()  {
                          bool res = map["fluttering"];
                          map["fluttering"]=!res;
                          noneOfThemAbove=-1;
                          callbackLog(curState, "fluttering_button", map["fluttering"]?"selected":"unselected");
                          refresh();

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
                        color: map["irritability"]==true?Color(0xfffbb299): Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black), borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          'irritability',
                          textAlign: TextAlign.center,
                        ),
                        onPressed: ()  {
                          bool res = map["irritability"];
                          map["irritability"]=!res;
                          noneOfThemAbove=-1;
                          callbackLog(curState, "irritability_button", map["irritability"]?"selected":"unselected");
                          refresh();

                          //  widget.callback(widget.curState, "wish"),
                        },                      ),
                    ),
                  ),

                  Container(
                    height: 40.0,
                    width: 130.0,
                    child: SizedBox(
                      child: RaisedButton( color: map["soreness"]==true?Color(0xfffbb299): Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black), borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          'soreness',
                          textAlign: TextAlign.center,
                        ),
                        onPressed: ()  {
                          bool res = map["soreness"];
                          map["soreness"]=!res;
                          callbackLog(curState, "soreness_button", map["soreness"]?"selected":"unselected");
                          noneOfThemAbove=-1;
                          refresh();

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
                      child: RaisedButton( color: map["other_physical_sensation"]==true?Color(0xfffbb299): Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black), borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          'other physical sensations',
                          textAlign: TextAlign.center,
                        ),
                        onPressed: ()  {
                          bool res = map["other_physical_sensation"];
                          map["other_physical_sensation"]=!res;
                          callbackLog(curState, "other_physical_sensation_button", map["other_physical_sensation"]?"selected":"unselected");
                          noneOfThemAbove=-1;
                          refresh();

                          //  widget.callback(widget.curState, "wish"),
                        },),
                    ),
                  ),

                ],),
              Padding(
                padding: EdgeInsets.all(5),
              ),
                  Container(
                    height: 50.0,
                    width: 230.0,
                    child: FittedBox(
                      child: RaisedButton( color: noneOfThemAbove==1?Color(0xfffbb299): Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black), borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          'none of them above',
                          textAlign: TextAlign.center,
                        ),
                        onPressed: ()  {
                        noneOfThemAbove=1;
                                map["tension"] = false;
                                map["calmness"] = false;
                                map["shakiness"] = false;
                                map["stillness"] = false;
                                map["pain"] = false;
                                map["warmth"] = false;
                                map["tightness"] = false;
                                map["sweatiness"] = false;
                                map["restlessness"] = false;
                                map["fluttering"] = false;
                                map["irritability"] = false;
                                map["soreness"] = false;
                                map["other_physical_sensation"] = false;
                        callbackLog(curState, "none_of_them_above_button", "selected");
                          refresh();
                          //  widget.callback(widget.curState, "wish"),
                        },
                      ),
                    ),
                  ),
            ]);
  }
  @override
  String getData(){
    List<String> data=new List();
    if(map["tension"] == true) data.add("tension");
    if(map["calmness"] == true) data.add("calmness");
    if(map["shakiness"] == true) data.add("shakiness");
    if(map["stillness"] == true) data.add("stillness");
    if(map["pain"] == true) data.add("pain");
    if(map["warmth"] == true) data.add("warmth");
    if(map["tightness"] == true) data.add("tightness");
    if(map["sweatiness"] == true) data.add("sweatiness");

    if(map["restlessness"] == true) data.add("restlessness");
    if(map["fluttering"] == true) data.add("fluttering");
    if(map["irritability"] == true) data.add("irritability");
    if(map["soreness"] == true) data.add("soreness");
    if(data.length==0){
      callbackLog(curState, "random_selection", "physical sensation");
      return "physical sensation";
    }else if(data.length==1) {
      callbackLog(curState, "random_selection", data[0]);
      return data[0];
    }
    else{
      Random r = new Random();
      int x = r.nextInt(data.length);
      callbackLog(curState, "random_selection", data[x]);
      return data[x];
    }
  }
}



