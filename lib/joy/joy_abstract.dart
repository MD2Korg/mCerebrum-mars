import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget_abstract.dart';

abstract class JoyAbstract extends WidgetAbstract {

  JoyAbstract(curState, callback, callbackLog, backgroundImage,
      {hasBack = true,hasForward = true,hasVolume = true,hasLowerBar = true}):super(curState, callback, callbackLog, backgroundImage,hasBack: hasBack, hasForward:hasForward, hasVolume:hasVolume, hasLowerBar:hasLowerBar);

  Widget myWidget(BuildContext context, Function() refresh);

  @override
  _JoyAbstractState createState() => _JoyAbstractState();
}

class _JoyAbstractState extends State<JoyAbstract> {
  void refresh() {
    if(!mounted) return;
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new WillPopScope(
        onWillPop: () async {
          widget.callbackLog(widget.curState, "back_button", "pressed");
          widget.callback(widget.curState, "back",widget.data);
          return false;
        },
        child: Scaffold(
            body: Stack(children: <Widget>[
          Center(
            child: new Image.asset(
              widget.backgroundImage,
              width: size.width,
              height: size.height,
              fit: BoxFit.cover,
            ),
          ),
          Container(child:
          FlatButton(
            child: Icon(
              CupertinoIcons.home,
              size: 48,
            ),
            highlightColor: Colors.white,
            focusColor: Colors.white,
            onPressed: (){
              widget.callbackLog(widget.curState, "home_button", "pressed");
              showAlertDialog(context);
            },
          ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: widget.myWidget(context, refresh),
                ),
                widget.hasLowerBar?
                Row(
                  children: <Widget>[
                    Expanded(
                      child: widget.hasBack?IconButton(
                        alignment: Alignment.bottomLeft,
                        icon: Icon(
                          CupertinoIcons.left_chevron,
                          color: Colors.black,
                        ),
                        iconSize: 60,
                        onPressed: () {
                          widget.callbackLog(widget.curState, "back_button", "pressed");
                          widget.callback(widget.curState, "back",widget.data);
                        },
                      ):Container(),
                    ),
                    Expanded(
                      child: widget.hasVolume?IconButton(
                        alignment: Alignment.center,
                        icon: Icon(
                          Icons.volume_up,
                          color: Colors.black,
                        ),
                        iconSize: 50,
                        onPressed: () {
                          widget.callbackLog(widget.curState, "audio_button", "pressed");
                        },
                      ):Container(),
                    ),
                    Expanded(
                      child: widget.hasForward?IconButton(
                        alignment: Alignment.bottomRight,
                        icon: Icon(
                          CupertinoIcons.right_chevron,
                          color: Colors.black,
                        ),
                        iconSize: 60,
                        onPressed: () {
                          widget.callbackLog(widget.curState, "next_button", "pressed");
                          widget.callback(widget.curState, "next",widget.data);
                        },
                      ):Container(),
                    ),
                  ],
                ):Container(),
              ],
            ),
          )
        ])));
  }
  showAlertDialog(BuildContext context) {

    // set up the button
    Widget yesButton = FlatButton(
      color: Color(0xffDFA952),
      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
      child: Text("Yes", style: TextStyle(color: Colors.white, fontSize: 18),),
      onPressed: () {
        widget.callbackLog(widget.curState, "quit_exercise", "yes pressed");
        widget.callback(widget.curState, "home",null);
        Navigator.of(context).pop(); // dismiss dialog

      },
    );
    Widget noButton = FlatButton(
      color: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
      child: Text("No", style: TextStyle(color: Colors.white, fontSize: 18),),
      onPressed: () {
        widget.callbackLog(widget.curState, "quit_exercise", "no pressed");
        Navigator.of(context).pop(); // dismiss dialog

      },
    );

    AlertDialog alert = AlertDialog(
      title: Text("Quit Exercise?", textAlign: TextAlign.center,),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          yesButton,
          noButton
        ],
      ),
    shape: RoundedRectangleBorder(side: BorderSide(), borderRadius: new BorderRadius.circular(8.0)),
      backgroundColor: Color(0xffffe5b9),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
