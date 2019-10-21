import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mars/widget_abstract.dart';

abstract class NoticeAbstract extends WidgetAbstract {

  NoticeAbstract(curState, callback, backgroundImage,
      {hasBack = true,hasForward = true,hasVolume = true,hasLowerBar = true}):super(curState, callback, backgroundImage,hasBack: hasBack, hasForward:hasForward, hasVolume:hasVolume, hasLowerBar:hasLowerBar);


  Widget myWidget(BuildContext context, Function() refresh);

  @override
  _NoticeAbstractState createState() => _NoticeAbstractState();

}

class _NoticeAbstractState extends State<NoticeAbstract> {
  void refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new WillPopScope(
        onWillPop: () async {
          widget.callback(widget.curState, "back", null);
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
          Container(
            child: FlatButton(
              child: Icon(
                CupertinoIcons.home,
                size: 48,
              ),
              highlightColor: Colors.white,
              focusColor: Colors.white,
              onPressed: () {
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
                      child: widget.hasBack
                          ? IconButton(
                              alignment: Alignment.bottomLeft,
                              icon: Icon(
                                CupertinoIcons.left_chevron,
                                color: Colors.black,
                              ),
                              iconSize: 60,
                              onPressed: () {
                                widget.callback(widget.curState, "back",widget.getData());
                              },
                            )
                          : Container(),
                    ),
                    Expanded(
                      child: widget.hasVolume?IconButton(
                        alignment: Alignment.center,
                        icon: Icon(
                          Icons.volume_up,
                          color: Colors.black,
                        ),
                        iconSize: 50,
                        onPressed: () {},
                      ):Container(),
                    ),
                    Expanded(
                      child: widget.hasForward
                          ? IconButton(
                              alignment: Alignment.bottomRight,
                              icon: Icon(
                                CupertinoIcons.right_chevron,
                                color: Colors.black,
                              ),
                              iconSize: 60,
                              onPressed: () {
                                widget.callback(widget.curState, "next",widget.getData());
                              },
                            )
                          : Container(),
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
      color: Color(0xfff29561),
      shape:
          RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
      child: Text(
        "Yes",
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
      onPressed: () {
        widget.callback(widget.curState, "home",null);
        Navigator.of(context).pop(); // dismiss dialog
      },
    );
    Widget noButton = FlatButton(
      color: Color(0xff848484),
      shape:
          RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
      child: Text(
        "No",
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
      onPressed: () {
        Navigator.of(context).pop(); // dismiss dialog
      },
    );

    AlertDialog alert = AlertDialog(
      title: Text(
        "Quit Exercise?",
        textAlign: TextAlign.center,
      ),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[yesButton, noButton],
      ),
      shape: RoundedRectangleBorder(
          side: BorderSide(), borderRadius: new BorderRadius.circular(8.0)),
      backgroundColor: Color(0xffd3d3d3),
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
