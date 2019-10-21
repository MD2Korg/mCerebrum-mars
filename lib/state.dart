import 'package:flutter/material.dart';
import 'package:mars/imagine/imagine_1.dart';
import 'package:mars/imagine/imagine_2.dart';
import 'package:mars/imagine/imagine_color_choose.dart';
import 'package:mars/imagine/imagine_has_shape.dart';
import 'package:mars/imagine/imagine_intro.dart';
import 'package:mars/imagine/imagine_like.dart';
import 'package:mars/imagine/imagine_remember.dart';
import 'package:mars/imagine/imagine_response.dart';
import 'package:mars/joy/joy_0_begin.dart';
import 'package:mars/joy/joy_1_deep.dart';
import 'package:mars/joy/joy_2_slowly.dart';
import 'package:mars/joy/joy_3_now.dart';
import 'package:mars/joy/joy_4_select.dart';
import 'package:mars/joy/joy_5_timer.dart';
import 'package:mars/joy/joy_6_complete.dart';
import 'package:mars/joy/joy_7_whenever.dart';
import 'package:mars/joy/joy_8_like.dart';
import 'package:mars/main_logo.dart';
import 'package:mars/meditate/meditate_intro.dart';
import 'package:mars/meditate/meditate_menu.dart';
import 'package:mars/meditate/meditate_response.dart';
import 'package:mars/moodsurf/moodsurf_page_0.dart';
import 'package:mars/moodsurf/moodsurf_page_1.dart';
import 'package:mars/moodsurf/moodsurf_page_3.dart';
import 'package:mars/moodsurf/moodsurf_page_4.dart';
import 'package:mars/moodsurf/moodsurf_page_5.dart';
import 'package:mars/notice/notice_begin.dart';
import 'package:mars/notice/notice_conclusion.dart';
import 'package:mars/notice/notice_experience.dart';
import 'package:mars/notice/notice_experience_detail.dart';
import 'package:mars/notice/notice_experience_q.dart';
import 'package:mars/notice/notice_experience_q2.dart';
import 'package:mars/notice/notice_experience_q3.dart';
import 'package:mars/notice/notice_intro.dart';
import 'package:mars/notice/notice_like.dart';
import 'package:mars/story_load_page.dart';
import 'package:mars/widget_abstract.dart';

import 'imagine/imagine_using.dart';
import 'meditate/meditate_like.dart';
import 'meditate/meditate_play.dart';
import 'menu.dart';
import 'moodsurf/moodsurf_page_2.dart';
import 'moodsurf/moodsurf_page_8.dart';
import 'notice/notice_experience_q4.dart';

class MyState {
  List<Transition> transitions;
  Map<String, Widget> widgets;
  void Function(String, String, String) callback;
  final BuildContext context;

  Widget getWidget(String state, String data) {
    WidgetAbstract x = widgets[state];
    x.data = data;
    return widgets[state];
  }

  String getNextState(String currentTransition, String input) {
    if(input=="home")
      return "menu";
    for (int i = 0; i < transitions.length; i++) {
      if (transitions[i].from == currentTransition &&
          transitions[i].input == input) return transitions[i].to;
    }
    return null;
  }


  void createWidgets(){
    widgets=new Map();
    widgets["main_logo"]=MainLogo("main_logo",callback);
    widgets["menu"]=Menu("menu",callback);

    widgets["moodsurf_load"]=StoryLoadPage("moodsurf_load", callback);
    widgets["meditate_load"]=StoryLoadPage("meditate_load", callback);
    widgets["imagine_load"]=StoryLoadPage("imagine_load", callback);
    widgets["notice_load"]=StoryLoadPage("notice_load", callback);
    widgets["joy_load"]=StoryLoadPage("joy_load", callback);

    widgets["moodsurf0"]= MoodSurfPage0("moodsurf0", callback);
    widgets["moodsurf1"]= MoodSurfPage1("moodsurf1", callback);
    widgets["moodsurf2"]= MoodSurfPage2("moodsurf2", callback);
    widgets["moodsurf3"]= MoodSurfPage3("moodsurf3", callback);
    widgets["moodsurf4"]= MoodSurfPage4("moodsurf4", callback);
    widgets["moodsurf5"]= MoodSurfPage5("moodsurf5", callback);
    widgets["moodsurf8"]= MoodSurfPage8("moodsurf8", callback);

    widgets["notice_begin"]= NoticeBegin("notice_begin",callback);
    widgets["notice_intro"]= NoticeIntro("notice_intro",callback);
    widgets["notice_experience"]=NoticeExperience("notice_experience", callback);
    widgets["notice_experience_q"]=NoticeExperienceQ("notice_experience_q", callback);
    widgets["notice_experience_q2"]=NoticeExperienceQ2("notice_experience_q2", callback);
    widgets["notice_experience_q3"]=NoticeExperienceQ3("notice_experience_q3", callback);
    widgets["notice_experience_q4"]=NoticeExperienceQ4("notice_experience_q4", callback);
    widgets["notice_experience_detail"]=NoticeExperienceDetail("notice_experience_detail", callback);
    widgets["notice_conclusion"]=NoticeConclusion("notice_conclusion", callback);
    widgets["notice_like"]=NoticeLike("notice_like", callback);


    widgets["imagine_intro"]= ImagineIntro("imagine_intro",callback);
    widgets["imagine_1"]= Imagine1("imagine_1",callback);
    widgets["imagine_2"]= Imagine2("imagine_2",callback);
    widgets["imagine_response"]= ImagineResponse("imagine_response",callback);
    widgets["imagine_color_choose"]= ImagineColorChoose("imagine_color_choose",callback);
    widgets["imagine_has_shape"]= ImagineHasShape("imagine_has_shape",callback);
    widgets["imagine_remember"]= ImagineRemember("imagine_remember",callback);
    widgets["imagine_using"]= ImagineUsing("imagine_using",callback);
    widgets["imagine_like"]= ImagineLike("imagine_like",callback);


    widgets["meditate_intro"]= MeditateIntro("meditate_intro",callback);
    widgets["meditate_menu"]= MeditateMenu("meditate_menu",callback);
    widgets["meditate_play"]= MeditatePlay("meditate_play",callback);
    widgets["meditate_like"]= MeditateLike("meditate_like",callback);
    widgets["meditate_response"]= MeditateResponse("meditate_response",callback);

    widgets["joy_0_begin"]= Joy0Begin("joy_0_begin",callback);
    widgets["joy_1_deep"]= Joy1Deep("joy_1_deep",callback);
    widgets["joy_2_slowly"]= Joy2Slowly("joy_2_slowly",callback);
    widgets["joy_3_now"]= Joy3Now("joy_3_now",callback);
    widgets["joy_4_select"]= Joy4Select("joy_4_select",callback);
    widgets["joy_5_timer"]= Joy5Timer("joy_5_timer",callback);
    widgets["joy_6_complete"]= Joy6Complete("joy_6_complete",callback);
    widgets["joy_7_whenever"]= Joy7Whenever("joy_7_whenever",callback);
    widgets["joy_8_like"]= Joy8Like("joy_8_like",callback);
  }

  MyState(this.context, Function(String, String, String) callback) {
    this.callback = callback;
    createWidgets();
    transitions = new List();
    transitions.add(Transition("main_logo", "next", "menu"));
    transitions.add(Transition("main_logo", "back", "close"));

    transitions.add(Transition("load", "back", "close"));
    transitions.add(Transition("load", "next", "menu"));

    transitions.add(Transition("menu", "back", "close"));
    transitions.add(Transition("menu", "moodsurf", "moodsurf_load"));
    transitions.add(Transition("menu", "imagine", "imagine_load"));
    transitions.add(Transition("menu", "notice", "notice_load"));

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
    transitions.add(Transition("moodsurf5", "next", "moodsurf8"));
    transitions.add(Transition("moodsurf8", "back", "moodsurf5"));
    transitions.add(Transition("moodsurf8", "next", "menu"));
    transitions.add(Transition("moodsurf5", "up", "menu"));
    transitions.add(Transition("moodsurf5", "down", "menu"));
    transitions.add(Transition("moodsurf5", "next", "menu"));

    transitions.add(Transition("menu", "meditate", "meditate_load"));
    transitions.add(Transition("meditate_load", "back", "menu"));
    transitions.add(Transition("meditate_load", "next", "meditate_intro"));
    transitions.add(Transition("meditate_intro", "back", "menu"));
    transitions.add(Transition("meditate_intro", "next", "meditate_menu"));

    transitions.add(Transition("meditate_menu", "back", "meditate_intro"));
    transitions.add(Transition("meditate_menu", "next", "meditate_play"));
    transitions.add(Transition("meditate_play", "back", "meditate_menu"));
    transitions.add(Transition("meditate_play", "next", "meditate_like"));
    transitions.add(Transition("meditate_like", "back", "meditate_play"));
    transitions.add(Transition("meditate_like", "next", "menu"));

//imagine
    transitions.add(Transition("imagine_load", "next", "imagine_intro"));
    transitions.add(Transition("imagine_intro", "back", "imagine_load"));

    transitions.add(Transition("imagine_intro", "begin", "imagine_1"));
    transitions.add(Transition("imagine_1", "back", "imagine_intro"));

    transitions.add(Transition("imagine_intro", "next", "imagine_1"));

    transitions.add(Transition("imagine_1", "next", "imagine_2"));
    transitions.add(Transition("imagine_2", "back", "imagine_1"));

    transitions.add(Transition("imagine_2", "next", "imagine_response"));
    transitions.add(Transition("imagine_response", "back", "imagine_2"));

    transitions.add(Transition("imagine_response", "next", "imagine_color_choose"));
    transitions.add(Transition("imagine_color_choose", "back", "imagine_response"));
    transitions.add(Transition("imagine_color_choose", "next", "imagine_has_shape"));
    transitions.add(Transition("imagine_has_shape", "back", "imagine_color_choose"));
    transitions.add(Transition("imagine_has_shape", "next", "imagine_remember"));

    transitions.add(Transition("imagine_remember", "back", "imagine_has_shape"));
    transitions.add(Transition("imagine_remember", "next", "imagine_using"));

    transitions.add(Transition("imagine_using", "back", "imagine_remember"));
    transitions.add(Transition("imagine_using", "next", "imagine_like"));

    transitions.add(Transition("imagine_like", "back", "imagine_using"));

    transitions.add(Transition("imagine_like", "next", "menu"));

    //notice
    transitions.add(Transition("notice_load", "next", "notice_begin"));
    transitions.add(Transition("notice_begin", "back", "menu"));

    transitions.add(Transition("notice_begin", "next", "notice_intro"));
    transitions.add(Transition("notice_begin", "begin", "notice_intro"));
    transitions.add(Transition("notice_intro", "back", "notice_begin"));

    transitions.add(Transition("notice_intro", "next", "notice_experience"));
    transitions.add(Transition("notice_experience", "back", "notice_intro"));

    transitions.add(Transition("notice_experience", "next", "notice_experience_detail"));
    transitions.add(Transition("notice_experience_detail", "back", "notice_experience"));


    transitions.add(Transition("notice_experience_detail", "next", "notice_experience_q"));
    transitions.add(Transition("notice_experience_q", "back", "notice_experience_detail"));
    transitions.add(Transition("notice_experience_q", "next", "notice_experience_q2"));
    transitions.add(Transition("notice_experience_q2", "back", "notice_experience_q"));
    transitions.add(Transition("notice_experience_q2", "next", "notice_experience_q3"));
    transitions.add(Transition("notice_experience_q3", "back", "notice_experience_q2"));
    transitions.add(Transition("notice_experience_q3", "next", "notice_experience_q4"));
    transitions.add(Transition("notice_experience_q4", "back", "notice_experience_q3"));
    transitions.add(Transition("notice_experience_q4", "next", "notice_conclusion"));

    transitions.add(Transition("notice_conclusion", "back", "notice_experience_q4"));

    transitions.add(Transition("notice_conclusion", "next", "notice_like"));
    transitions.add(Transition("notice_like", "back", "notice_conclusion"));

    transitions.add(Transition("notice_like", "next", "menu"));


    transitions.add(Transition("menu", "joy", "joy_load"));
    transitions.add(Transition("joy_load", "back", "menu"));
    transitions.add(Transition("joy_load", "next", "joy_0_begin"));
    transitions.add(Transition("joy_0_begin", "back", "menu"));
    transitions.add(Transition("joy_0_begin", "next", "joy_1_deep"));
    transitions.add(Transition("joy_1_deep", "back", "joy_0_begin"));
    transitions.add(Transition("joy_1_deep", "next", "joy_2_slowly"));
    transitions.add(Transition("joy_2_slowly", "back", "joy_1_deep"));
    transitions.add(Transition("joy_2_slowly", "next", "joy_3_now"));
    transitions.add(Transition("joy_3_now", "back", "joy_2_slowly"));
    transitions.add(Transition("joy_3_now", "next", "joy_4_select"));
    transitions.add(Transition("joy_4_select", "back", "joy_3_now"));
    transitions.add(Transition("joy_4_select", "next", "joy_5_timer"));
    transitions.add(Transition("joy_5_timer", "back", "joy_4_select"));
    transitions.add(Transition("joy_5_timer", "next", "joy_7_whenever"));
    transitions.add(Transition("joy_5_timer", "complete", "joy_6_complete"));
    transitions.add(Transition("joy_6_complete", "back", "joy_5_timer"));
    transitions.add(Transition("joy_6_complete", "next", "joy_7_whenever"));
    transitions.add(Transition("joy_7_whenever", "back", "joy_4_select"));
    transitions.add(Transition("joy_7_whenever", "next", "joy_8_like"));
    transitions.add(Transition("joy_8_like", "back", "joy_7_whenever"));
    transitions.add(Transition("joy_8_like", "next", "menu"));
  }
}

class Transition {
  final String from;
  final String input;
  final String to;

  Transition(this.from, this.input, this.to);
}
