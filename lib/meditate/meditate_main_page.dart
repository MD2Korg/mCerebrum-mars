import 'package:flutter/material.dart';

class MeditateMainPage extends StatefulWidget {

  @override
  _MeditateMainPageState createState() => _MeditateMainPageState();
}

class _MeditateMainPageState extends State<MeditateMainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF383636),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/meditate.png"),
            Container(padding: EdgeInsets.all(20),),
            Text(
              'meditate',
                style: TextStyle(fontFamily: 'Roboto',color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
