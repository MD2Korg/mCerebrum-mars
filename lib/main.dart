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
  debugShowCheckedModeBanner: false,
  home: MainPage(),
));

class MainPage extends StatefulWidget{

  @override
  _MainPageState createState() => _MainPageState();
}
class _MainPageState extends State<MainPage>{
  String curState="main_logo_page";
  String curData;
  MyState state;
  List<String> logs = new List();
  void stateChanged(String prevState, String input, String data){
    WidgetAbstract p = state.widgets[prevState];
    p.stop().then((onValue){
      curState =  state.getNextState(prevState, input);
      WidgetAbstract c = state.widgets[curState];
      if(c!=null && input=="next") c.init();

      curData = data;
      setState(() {

      });

    });

  }
  void callbackLog(String page, String event, String action){
    String log = new DateTime.now().toIso8601String()+","+page+","+event+","+action;
    logs.add(log);
    print("time="+((new DateTime.now()).millisecondsSinceEpoch.toString())+", page="+page+", event="+event+", action="+action);

//    print("time="+((new DateTime.now()).millisecondsSinceEpoch.toString())+", page="+page+", event="+event+", action="+action);
  }
  @override
  void initState(){
    super.initState();
    state = new MyState(context, stateChanged, callbackLog);
  }
  @override
  Widget build(BuildContext context){
    SystemChrome.setEnabledSystemUIOverlays([]);
    WidgetAbstract c = state.getWidget(curState, curData);
    c.start();
    return c;
  }

}



