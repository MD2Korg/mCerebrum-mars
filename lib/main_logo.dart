import 'package:flutter/material.dart';

class MainLogo extends StatefulWidget {
  final String currentState;
  final void Function(String, String) callback;

  MainLogo(this.currentState, this.callback);
  @override
  _MainLogoState createState() => _MainLogoState();
}


class _MainLogoState extends State<MainLogo> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 2),()=>widget.callback(widget.currentState, "next"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/mars.png"),


          ],
        ),
      ),
    );
  }


}
