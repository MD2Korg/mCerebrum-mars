import 'package:flutter/material.dart';
import 'package:mars/widget_abstract.dart';

class StoryLoadPage extends WidgetAbstract {
  StoryLoadPage(currentState, callback, callbackLog) : super(currentState, callback, callbackLog, null);

  @override
  _StoryLoadPageState createState() => _StoryLoadPageState();

  @override
  Widget myWidget(BuildContext context, refresh) {
    return Container();
  }
}

class _StoryLoadPageState extends State<StoryLoadPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2),
        () => widget.callback(widget.curState, "next", null));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: new Image.asset(
          _getImagePath(),
          width: size.width,
          height: size.height,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  String _getImagePath() {
    String path = "assets/moodsurf.png";
    switch (widget.curState) {
      case "moodsurf_load_page":
        path = "assets/moodsurf_load_screen.png";
        break;
      case "meditate_load_page":
        path = "assets/meditate_load_screen.png";
        break;
      case "imagine_load_page":
        path = "assets/imagine_load_screen.png";
        break;
      case "notice_load_page":
        path = "assets/notice_load_screen.png";
        break;
      case "joy_load_page":
        path = "assets/joy_load_screen.png";
        break;
    }
    return path;
  }
}
