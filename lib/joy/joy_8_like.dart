import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mars/joy/joy_abstract.dart';


class Joy8Like extends JoyAbstract {
  Joy8Like(String curState, void Function(String, String,String) callback)
      : super(curState, callback, 'assets/joy_0.png');
  bool isSelectedUp = false;
  bool isSelectedDown = false;

  @override
  Widget myWidget(BuildContext context, Function() refresh) {
    return Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 200),),
                Text("Was this exercise\nhelpful?",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black)),
                Padding(padding: EdgeInsets.only(top: 20),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(top: 40),
                        child: isSelectedDown
                            ? IconButton(
                            icon: Icon(FontAwesomeIcons.thumbsDown,
                                color: Colors.white),
                            iconSize: 70,
                            onPressed: () {
                              isSelectedDown = !isSelectedDown;
                              if (isSelectedDown == true)
                                isSelectedUp = false;
                              refresh();
                            })
                            : IconButton(
                            icon: Icon(
                              FontAwesomeIcons.thumbsDown,
                              color: Colors.black,
                            ),
                            iconSize: 70,
                            onPressed: () {
                              isSelectedDown = !isSelectedDown;
                              if (isSelectedDown == true)
                                isSelectedUp = false;
                              refresh();
                            })),
                    SizedBox(
                      width: 80,
                    ),
                    isSelectedUp
                        ? IconButton(
                        icon: Icon(FontAwesomeIcons.thumbsUp,
                            color: Colors.white),
                        iconSize: 70,
                        onPressed: () {
                          isSelectedUp = !isSelectedUp;
                          if (isSelectedUp == true)
                            isSelectedDown = false;
                          refresh();
                        })
                        : IconButton(
                        icon: Icon(
                          FontAwesomeIcons.thumbsUp,
                          color: Colors.black,
                        ),
                        iconSize: 70,
                        onPressed: () {
                          isSelectedUp = !isSelectedUp;
                          if (isSelectedUp == true)
                            isSelectedDown = false;
                          refresh();
                        }),
                  ],
                )
              ],
    );
  }
}
