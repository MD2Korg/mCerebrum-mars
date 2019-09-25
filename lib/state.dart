import 'package:flutter/material.dart';
import 'package:mars/imagine/imagine_1.dart';
import 'package:mars/imagine/imagine_2.dart';
import 'package:mars/imagine/imagine_color_q.dart';
import 'package:mars/imagine/imagine_intro.dart';
import 'package:mars/imagine/imagine_like.dart';
import 'package:mars/imagine/imagine_response.dart';
import 'package:mars/main_logo.dart';
import 'package:mars/meditate/meditate_intro.dart';
import 'package:mars/meditate/meditate_menu.dart';
import 'package:mars/meditate/meditate_response.dart';
import 'package:mars/moodsurf/moodsurf_page_0.dart';
import 'package:mars/moodsurf/moodsurf_page_1.dart';
import 'package:mars/moodsurf/moodsurf_page_3.dart';
import 'package:mars/moodsurf/moodsurf_page_4.dart';
import 'package:mars/moodsurf/moodsurf_page_5.dart';
import 'package:mars/moodsurf/moodsurf_page_6.dart';
import 'package:mars/moodsurf/moodsurf_page_7.dart';
import 'package:mars/story_load_page.dart';

import 'menu.dart';
import 'moodsurf/moodsurf_page_2.dart';
import 'moodsurf/moodsurf_page_8.dart';

class MyState {
  List<Transition> transitions;
  void Function(String, String) callback;
  BuildContext context;

  Widget getWidget(String state) {
    switch (state) {
      case "moodsurf_load":
      case "meditate_load":
      case "imagine_load":
      case "notice_load":
      case "joy_load":
        return StoryLoadPage(state, callback);
      case "main_logo":
        return MainLogo(state, callback);
      case "moodsurf0":
        return MoodSurfPage0(state, callback);
      case "moodsurf1":
        return MoodSurfPage1(state, callback);
      case "moodsurf2":
        return MoodSurfPage2(state, callback);
      case "moodsurf3":
        return MoodSurfPage3(state, callback);
      case "moodsurf4":
        return MoodSurfPage4(state, callback);
      case "moodsurf5":
        return MoodSurfPage5(state, callback);
      case "moodsurf6":
        return MoodSurfPage6(state, callback);
      case "moodsurf7":
        return MoodSurfPage7(state, callback);
      case "moodsurf8":
        return MoodSurfPage8(state, callback);
      case "meditate_menu":
        return MeditateMenu(state,callback);
      case "meditate_intro":
        return MeditateIntro(state,callback);

      case "imagine_intro":
        return ImagineIntro(state,callback);

      case "imagine_1":
        return Imagine1(state,callback);

      case "imagine_2":
        return Imagine2(state,callback);

      case "meditate_response":
        return MeditateResponse(state,callback);

      case "imagine_response":
        return ImagineResponse(state,callback);

      case "imagine_color_q":
        return ImagineColorQ(state,callback);

      case "imagine_like":
        return ImagineLike(state,callback);



      case "menu":
        return Menu(state, callback);
    }
    return Container();
  }

  String getNextState(String currentTransition, String input) {
    for (int i = 0; i < transitions.length; i++) {
      if (transitions[i].from == currentTransition &&
          transitions[i].input == input) return transitions[i].to;
    }
    return null;
  }

  void setContext(BuildContext context) {
    this.context = context;
  }

  void setCallback(Function(String, String) callback) {
    this.callback = callback;
  }

  MyState() {
    transitions = new List();
    transitions.add(Transition("main_logo", "next", "menu"));
    transitions.add(Transition("main_logo", "back", "close"));

    transitions.add(Transition("load", "back", "close"));
    transitions.add(Transition("load", "next", "menu"));

    transitions.add(Transition("menu", "back", "close"));
    transitions.add(Transition("menu", "moodsurf", "moodsurf_load"));
    transitions.add(Transition("menu", "meditate", "meditate_load"));
    transitions.add(Transition("menu", "imagine", "imagine_load"));
    transitions.add(Transition("menu", "notice", "notice_load"));
    transitions.add(Transition("menu", "joy", "joy_load"));

    transitions.add(Transition("moodsurf_load", "back", "menu"));
    transitions.add(Transition("moodsurf_load", "next", "moodsurf0"));
    transitions.add(Transition("moodsurf0", "back", "menu"));

    transitions.add(Transition("moodsurf0", "next", "moodsurf1"));
    transitions.add(Transition("moodsurf1", "back", "moodsurf0"));

    transitions.add(Transition("moodsurf1", "next", "moodsurf2"));
    transitions.add(Transition("moodsurf2", "back", "moodsurf1"));
    transitions.add(Transition("moodsurf2", "next", "moodsurf3"));
    transitions.add(Transition("moodsurf3", "back", "moodsurf2"));
    transitions.add(Transition("moodsurf3", "next", "moodsurf4"));
    transitions.add(Transition("moodsurf4", "back", "moodsurf3"));
    transitions.add(Transition("moodsurf4", "next", "moodsurf5"));
    transitions.add(Transition("moodsurf5", "back", "moodsurf4"));
    transitions.add(Transition("moodsurf5", "next", "moodsurf6"));
    transitions.add(Transition("moodsurf6", "back", "moodsurf5"));
    transitions.add(Transition("moodsurf6", "next", "moodsurf7"));
    transitions.add(Transition("moodsurf7", "back", "moodsurf6"));
    transitions.add(Transition("moodsurf7", "next", "moodsurf8"));
    transitions.add(Transition("moodsurf8", "back", "moodsurf7"));
    transitions.add(Transition("moodsurf8", "next", "menu"));
    transitions.add(Transition("moodsurf5", "up", "menu"));
    transitions.add(Transition("moodsurf5", "down", "menu"));
    transitions.add(Transition("moodsurf5", "next", "menu"));
    transitions.add(Transition("meditate_load", "back", "menu"));
    transitions.add(Transition("meditate_load", "next", "meditate_menu"));
    transitions.add(Transition("meditate_menu", "back", "menu"));

    transitions.add(Transition("meditate_menu", "back", "menu"));
    transitions.add(Transition("meditate_menu", "next", "meditate_intro"));
    transitions.add(Transition("meditate_intro", "back", "meditate_menu"));

    transitions.add(Transition("meditate_menu", "rock", "meditate_intro"));
    transitions.add(Transition("meditate_menu", "wish", "meditate_intro"));
    transitions.add(Transition("meditate_menu", "space", "meditate_intro"));
    transitions.add(Transition("meditate_menu", "flow", "meditate_intro"));
    transitions.add(Transition("meditate_menu", "scan", "meditate_intro"));
    transitions.add(Transition("meditate_menu", "wave", "meditate_intro"));
    transitions.add(Transition("meditate_intro", "back", "meditate_menu"));
    transitions.add(Transition("meditate_intro", "begin", "meditate_response"));
    transitions.add(Transition("meditate_player", "end", "meditate_rating"));
    transitions.add(Transition("meditate_rating", "back", "meditate_player"));
    transitions.add(Transition("meditate_rating", "up", "menu"));
    transitions.add(Transition("meditate_rating", "down", "menu"));
    transitions.add(Transition("meditate_rating", "next", "menu"));



    transitions.add(Transition("imagine_load", "next", "imagine_intro"));

    transitions.add(Transition("imagine_intro", "begin", "imagine_1"));
    transitions.add(Transition("imagine_1", "next", "imagine_2"));
    transitions.add(Transition("imagine_2", "next", "imagine_response"));

    transitions.add(Transition("imagine_response", "next", "imagine_color_q"));
    transitions.add(Transition("imagine_color_q", "next", "imagine_like"));

  }
}

class Transition {
  final String from;
  final String input;
  final String to;

  Transition(this.from, this.input, this.to);
}
