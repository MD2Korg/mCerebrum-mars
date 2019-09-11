import 'package:flutter/material.dart';

class State{
  List<Transition> transitions;
  Widget getWidget(String state){
    switch(state){
      case "moodsurf_load":

    }
    return Container();
  }
  String getNextState(String currentTransition, String input){
    for(int i=0;i<transitions.length;i++){
      if(transitions[i].from==currentTransition && transitions[i].input==input)
        return transitions[i].to;
    }
    return null;
  }
  State(){
    transitions = new List();
    transitions.add(Transition("load", "back","close"));
    transitions.add(Transition("load","next","menu"));

    transitions.add(Transition("menu","back","close"));
    transitions.add(Transition("menu","moodsurf","moodsurf_load"));
    transitions.add(Transition("menu","meditate","meditate_load"));
    transitions.add(Transition("menu","imagine","imagine_load"));
    transitions.add(Transition("menu","notice","notice_load"));
    transitions.add(Transition("menu","joy","joy_load"));

    transitions.add(Transition("moodsurf_load","back","menu"));
    transitions.add(Transition("moodsurf_load","next","moodsurf1"));
    transitions.add(Transition("moodsurf1","back","menu"));
    transitions.add(Transition("moodsurf1","next","moodsurf2"));
    transitions.add(Transition("moodsurf2","back","moodsurf1"));
    transitions.add(Transition("moodsurf2","next","moodsurf3"));
    transitions.add(Transition("moodsurf3","back","moodsurf2"));
    transitions.add(Transition("moodsurf3","next","moodsurf4"));
    transitions.add(Transition("moodsurf4","back","moodsurf3"));
    transitions.add(Transition("moodsurf4","next","moodsurf5"));
    transitions.add(Transition("moodsurf5","back","moodsurf4"));
    transitions.add(Transition("moodsurf5","up","menu"));
    transitions.add(Transition("moodsurf5","down","menu"));
    transitions.add(Transition("moodsurf5","next","menu"));

    transitions.add(Transition("meditate_load","back","menu"));
    transitions.add(Transition("meditate_load","next","meditate_option"));
    transitions.add(Transition("meditate_option","back","menu"));
    transitions.add(Transition("meditate_option","rock","meditate_intro"));
    transitions.add(Transition("meditate_option","wish","meditate_intro"));
    transitions.add(Transition("meditate_option","space","meditate_intro"));
    transitions.add(Transition("meditate_option","flow","meditate_intro"));
    transitions.add(Transition("meditate_option","scan","meditate_intro"));
    transitions.add(Transition("meditate_option","wave","meditate_intro"));
    transitions.add(Transition("meditate_intro","back","meditate_option"));
    transitions.add(Transition("meditate_intro","begin","meditate_player"));
    transitions.add(Transition("meditate_player","end","meditate_rating"));
    transitions.add(Transition("meditate_rating","back","meditate_player"));
    transitions.add(Transition("meditate_rating","up","menu"));
    transitions.add(Transition("meditate_rating","down","menu"));
    transitions.add(Transition("meditate_rating","next","menu"));


  }
}
class Transition{
  final String from;
  final String input;
  final String to;
  Transition(this.from, this.input, this.to);
}