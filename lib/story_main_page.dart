import 'package:flutter/material.dart';

class StoryMainPage extends StatefulWidget {
  final String imageStr;
  final String text;

  StoryMainPage(this.imageStr, this.text);
  @override
  _StoryMainPageState createState() => _StoryMainPageState();
}

class _StoryMainPageState extends State<StoryMainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF383636),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(widget.imageStr),
            Container(padding: EdgeInsets.all(20),),
            Text(
              widget.text,
                style: TextStyle(fontFamily: 'Roboto',color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
