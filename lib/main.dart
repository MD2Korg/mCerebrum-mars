import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mars/state.dart';
import 'package:mars/widget_abstract.dart';

void main() => runApp(MaterialApp(
  theme: new ThemeData(
    scaffoldBackgroundColor: const Color(0xFF383636),
    fontFamily: 'Lexend Deca',
    textTheme: TextTheme(
      body1: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700, height: 1.8, letterSpacing: 1.2),
    )
  ),
  home: MainPage(),
));

class MainPage extends StatefulWidget{

  @override
  _MainPageState createState() => _MainPageState();
}
class _MainPageState extends State<MainPage>{
  String curState="main_logo";
  String curData;
  MyState state;
  void stateChanged(String prevState, String input, String data){
    WidgetAbstract p = state.widgets[prevState];
    p.stop();


    curState =  state.getNextState(prevState, input);
    curData = data;
    setState(() {
      
    });
  }
  @override
  void initState(){
    super.initState();
    state = new MyState(context, stateChanged);
  }
  @override
  Widget build(BuildContext context){
    SystemChrome.setEnabledSystemUIOverlays([]);
    WidgetAbstract c = state.getWidget(curState, curData);
    c.start();
    return c;
  }

}



