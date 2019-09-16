import 'package:flutter/material.dart';
import 'package:mars/meditate/meditate_menu.dart';
import 'package:mars/menu.dart';
import 'package:mars/moodsurf/moodsurf_page_1.dart';
import 'package:mars/moodsurf/moodsurf_page_2.dart';
import 'package:mars/moodsurf/moodsurf_page_8.dart';
import 'package:mars/state.dart';
import 'package:mars/story_load_page.dart';

import 'meditate/meditate_main_page.dart';

void main() => runApp(MaterialApp(
  theme: new ThemeData(
    scaffoldBackgroundColor: const Color(0xFF383636),
    fontFamily: 'Lexend Deca',
    textTheme: TextTheme(
      body1: TextStyle(fontSize: 22.0),
    )
  ),
  home: MainPage(),
));

class MainPage extends StatefulWidget{

  @override
  _MainPageState createState() => _MainPageState();
}
class _MainPageState extends State<MainPage>{
  String curState="menu";
  MyState state = new MyState();
  void stateChanged(String prevState, String input){
    curState =  state.getNextState(prevState, input);
    
    setState(() {
      
    });
  }
  @override
  void initState(){
    super.initState();
    state.setCallback( stateChanged);
    state.setContext(context);
  }
  @override
  Widget build(BuildContext context){
    return state.getWidget(curState);
  }
}



