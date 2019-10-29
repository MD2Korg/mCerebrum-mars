import 'package:flutter/material.dart';
import 'package:mars/widget_abstract.dart';

class MainLogo extends WidgetAbstract {

  MainLogo(curState, callback, callbackLog):super(curState, callback, callbackLog, null);
  @override
  _MainLogoState createState() => _MainLogoState();

  @override
  Widget myWidget(BuildContext context, refresh) {
    return Container();
  }
}


class _MainLogoState extends State<MainLogo> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 2),()=>widget.callback(widget.curState, "next",null));
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: new Image.asset(
          "assets/mars_load.png",
          width: size.width,
          height: size.height,
          fit: BoxFit.cover,
        ),
      ),
    );
  }


}
