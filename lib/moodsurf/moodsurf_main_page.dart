import 'package:flutter/material.dart';

class MoodSurfMainPage extends StatefulWidget {

  @override
  _MoodSurfMainPageState createState() => _MoodSurfMainPageState();
}

class _MoodSurfMainPageState extends State<MoodSurfMainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF383636),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/moodsurf.jpg"),
            Container(padding: EdgeInsets.all(20),),
            Text(
              'moodsurf',
                style: TextStyle(fontFamily: 'Roboto',color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
