import 'package:flutter/material.dart';

class StoryLoadPage extends StatefulWidget {
  final String currentState;
  final void Function(String, String) callback;

  StoryLoadPage(this.currentState, this.callback);
  @override
  _StoryLoadPageState createState() => _StoryLoadPageState();
}


class _StoryLoadPageState extends State<StoryLoadPage> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 1),()=>widget.callback(widget.currentState, "next"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(_getImagePath()),
            Container(padding: EdgeInsets.all(20),),
            Text(
              _getText(),
                style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
  String _getImagePath(){
    String path = "assets/moodsurf.png";
    switch(widget.currentState){
      case "moodsurf_load": path = "assets/moodsurf.jpg";break;
      case "meditate_load": path = "assets/meditate.png";break;
      case "imagine_load": path = "assets/imagine.png";break;
      case "notice_load": path = "assets/notice.png";break;
      case "joy_load": path = "assets/joy.png";break;
    }
    return path;
  }
  String _getText(){
    String text = "moodsurf";
    switch(widget.currentState){
      case "moodsurf_load": text = "moodsurf";break;
      case "meditate_load": text = "meditate";break;
      case "imagine_load": text = "imagine";break;
      case "notice_load": text = "notice";break;
      case "joy_load": text = "joy";break;
    }
    return text;

  }
}
