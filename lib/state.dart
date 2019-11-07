import 'package:flutter/material.dart';
import 'package:mars/imagine/imagine_1_you.dart';
import 'package:mars/imagine/imagine_2_take.dart';
import 'package:mars/imagine/imagine_4_color.dart';
import 'package:mars/imagine/imagine_5_shape.dart';
import 'package:mars/imagine/imagine_0_begin.dart';
import 'package:mars/imagine/imagine_8_like.dart';
import 'package:mars/imagine/imagine_6_remember.dart';
import 'package:mars/imagine/imagine_3_imaging.dart';
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
import 'package:mars/meditate/meditate_0_begin.dart';
import 'package:mars/meditate/meditate_1_menu.dart';
import 'package:mars/moodsurf/moodsurf_page_0.dart';
import 'package:mars/moodsurf/moodsurf_page_1.dart';
import 'package:mars/moodsurf/moodsurf_page_3.dart';
import 'package:mars/moodsurf/moodsurf_page_4.dart';
import 'package:mars/moodsurf/moodsurf_page_5.dart';
import 'package:mars/notice/notice_0_begin.dart';
import 'package:mars/notice/notice_8_noticing.dart';
import 'package:mars/notice/notice_2_experiencing.dart';
import 'package:mars/notice/notice_3_take.dart';
import 'package:mars/notice/notice_4_one.dart';
import 'package:mars/notice/notice_5_strong.dart';
import 'package:mars/notice/notice_6_feel.dart';
import 'package:mars/notice/notice_1_this.dart';
import 'package:mars/notice/notice_9_like.dart';
import 'package:mars/story_load_page.dart';
import 'package:mars/widget_abstract.dart';

import 'imagine/imagine_7_using.dart';
import 'meditate/meditate_3_like.dart';
import 'meditate/meditate_2_play.dart';
import 'menu.dart';
import 'moodsurf/moodsurf_page_2.dart';
import 'moodsurf/moodsurf_page_8.dart';
import 'notice/notice_7_mood.dart';

class MyState {
  List<Transition> transitions;
  Map<String, Widget> widgets;
  void Function(String, String, String) callback;
  void Function(String page, String event, String action) callbackLog;
  final BuildContext context;

  Widget getWidget(String state, String data) {
    WidgetAbstract x = widgets[state];
    x.data = data;
    return widgets[state];
  }

  String getNextState(String currentTransition, String input) {
    if (input == "home") {
      callbackLog(currentTransition, "change_page", "menu_page");
      return "menu_page";
    }
    for (int i = 0; i < transitions.length; i++) {
      if (transitions[i].from == currentTransition &&
          transitions[i].input == input) {
        callbackLog(currentTransition, "change_page", transitions[i].to);
        return transitions[i].to;
      }
    }
    return null;
  }


  void createWidgets(){
    widgets=new Map();
    widgets["main_logo_page"]=MainLogo("main_logo_page",callback, callbackLog);
    widgets["menu_page"]=Menu("menu_page",callback, callbackLog);

    widgets["moodsurf_load_page"]=StoryLoadPage("moodsurf_load_page", callback, callbackLog);
    widgets["meditate_load_page"]=StoryLoadPage("meditate_load_page", callback, callbackLog);
    widgets["imagine_load_page"]=StoryLoadPage("imagine_load_page", callback, callbackLog);
    widgets["notice_load_page"]=StoryLoadPage("notice_load_page", callback, callbackLog);

    widgets["moodsurf_0_begin_page"]= MoodSurfPage0("moodsurf_0_begin_page", callback, callbackLog);
    widgets["moodsurf_1_imagine_page"]= MoodSurfPage1("moodsurf_1_imagine_page", callback, callbackLog);
    widgets["moodsurf_2_imagine_page"]= MoodSurfPage2("moodsurf_2_imagine_page", callback, callbackLog);
    widgets["moodsurf_3_imagine_page"]= MoodSurfPage3("moodsurf_3_imagine_page", callback, callbackLog);
    widgets["moodsurf_4_some_page"]= MoodSurfPage4("moodsurf_4_some_page", callback, callbackLog);
    widgets["moodsurf_5_thinking_page"]= MoodSurfPage5("moodsurf_5_thinking_page", callback, callbackLog);
    widgets["moodsurf_6_like_page"]= MoodSurfPage8("moodsurf_6_like_page", callback, callbackLog);

    widgets["notice_0_begin_page"]= NoticeBegin("notice_0_begin_page",callback, callbackLog);
    widgets["notice_1_this_page"]= NoticeIntro("notice_1_this_page",callback, callbackLog);
    widgets["notice_2_experiencing_page"]=NoticeExperience("notice_2_experiencing_page", callback, callbackLog);
    widgets["notice_3_take_page"]=NoticeExperienceDetail("notice_3_take_page", callback, callbackLog);
    widgets["notice_4_one_page"]=NoticeExperienceQ("notice_4_one_page", callback, callbackLog);
    widgets["notice_5_strong_page"]=NoticeExperienceQ2("notice_5_strong_page", callback, callbackLog);
    widgets["notice_6_feel_page"]=NoticeExperienceQ3("notice_6_feel_page", callback, callbackLog);
    widgets["notice_7_mood_page"]=NoticeExperienceQ4("notice_7_mood_page", callback, callbackLog);
    widgets["notice_8_notcing_page"]=NoticeConclusion("notice_8_notcing_page", callback, callbackLog);
    widgets["notice_9_like_page"]=NoticeLike("notice_9_like_page", callback, callbackLog);


    widgets["imagine_0_begin_page"]= Imagine0Begin("imagine_0_begin_page",callback, callbackLog);
    widgets["imagine_1_you_page"]= Imagine1("imagine_1_you_page",callback, callbackLog);
    widgets["imagine_2_take_page"]= Imagine2("imagine_2_take_page",callback, callbackLog);
    widgets["imagine_3_imaging_page"]= ImagineResponse("imagine_3_imaging_page",callback, callbackLog);
    widgets["imagine_4_color_page"]= ImagineColorChoose("imagine_4_color_page",callback, callbackLog);
    widgets["imagine_5_shape_page"]= ImagineHasShape("imagine_5_shape_page",callback, callbackLog);
    widgets["imagine_6_remember_page"]= ImagineRemember("imagine_6_remember_page",callback, callbackLog);
    widgets["imagine_7_using_page"]= ImagineUsing("imagine_7_using_page",callback, callbackLog);
    widgets["imagine_8_like_page"]= ImagineLike("imagine_8_like_page",callback, callbackLog);


    widgets["meditate_0_begin_page"]= MeditateIntro("meditate_0_begin_page",callback, callbackLog);
    widgets["meditate_1_menu_page"]= MeditateMenu("meditate_1_menu_page",callback, callbackLog);
    widgets["meditate_2_play_page"]= MeditatePlay("meditate_2_play_page",callback, callbackLog);
    widgets["meditate_3_like_page"]= MeditateLike("meditate_3_like_page",callback, callbackLog);

    widgets["joy_load_page"]=StoryLoadPage("joy_load_page", callback, callbackLog);
    widgets["joy_0_begin_page"]= Joy0Begin("joy_0_begin_page",callback, callbackLog);
    widgets["joy_1_deep_page"]= Joy1Deep("joy_1_deep_page",callback, callbackLog);
    widgets["joy_2_slowly_page"]= Joy2Slowly("joy_2_slowly_page",callback, callbackLog);
    widgets["joy_3_now_page"]= Joy3Now("joy_3_now_page",callback, callbackLog);
    widgets["joy_4_select_page"]= Joy4Select("joy_4_select_page",callback, callbackLog);
    widgets["joy_5_timer_page"]= Joy5Timer("joy_5_timer_page",callback, callbackLog);
    widgets["joy_6_complete_page"]= Joy6Complete("joy_6_complete_page",callback, callbackLog);
    widgets["joy_7_whenever_page"]= Joy7Whenever("joy_7_whenever_page",callback, callbackLog);
    widgets["joy_8_like_page"]= Joy8Like("joy_8_like_page",callback, callbackLog);
  }

  MyState(this.context, callback, callbackLog) {
    this.callback = callback;
    this.callbackLog = callbackLog;
    createWidgets();
    createTransitions();
  }
  void createTransitions(){
    transitions = new List();
    transitions.add(Transition("main_logo_page", "next", "menu_page"));
    transitions.add(Transition("main_logo_page", "back", "close"));

    transitions.add(Transition("load", "back", "close"));
    transitions.add(Transition("load", "next", "menu_page"));

    transitions.add(Transition("menu_page", "back", "close"));
    transitions.add(Transition("menu_page", "moodsurf", "moodsurf_load_page"));
    transitions.add(Transition("menu_page", "imagine", "imagine_load_page"));
    transitions.add(Transition("menu_page", "notice", "notice_load_page"));

    transitions.add(Transition("moodsurf_load_page", "back", "menu_page"));
    transitions.add(Transition("moodsurf_load_page", "next", "moodsurf_0_begin_page"));
    transitions.add(Transition("moodsurf_0_begin_page", "back", "menu_page"));
    transitions.add(Transition("moodsurf_0_begin_page", "next", "moodsurf_1_imagine_page"));
    transitions.add(Transition("moodsurf_1_imagine_page", "back", "moodsurf_0_begin_page"));
    transitions.add(Transition("moodsurf_1_imagine_page", "next", "moodsurf_2_imagine_page"));
    transitions.add(Transition("moodsurf_2_imagine_page", "back", "moodsurf_1_imagine_page"));
    transitions.add(Transition("moodsurf_2_imagine_page", "next", "moodsurf_3_imagine_page"));
    transitions.add(Transition("moodsurf_3_imagine_page", "back", "moodsurf_2_imagine_page"));
    transitions.add(Transition("moodsurf_3_imagine_page", "next", "moodsurf_4_some_page"));
    transitions.add(Transition("moodsurf_4_some_page", "back", "moodsurf_3_imagine_page"));
    transitions.add(Transition("moodsurf_4_some_page", "next", "moodsurf_5_thinking_page"));
    transitions.add(Transition("moodsurf_5_thinking_page", "back", "moodsurf_4_some_page"));
    transitions.add(Transition("moodsurf_5_thinking_page", "next", "moodsurf_6_like_page"));
    transitions.add(Transition("moodsurf_6_like_page", "back", "moodsurf_5_thinking_page"));
    transitions.add(Transition("moodsurf_6_like_page", "next", "menu_page"));
    transitions.add(Transition("moodsurf_5_thinking_page", "up", "menu_page"));
    transitions.add(Transition("moodsurf_5_thinking_page", "down", "menu_page"));
    transitions.add(Transition("moodsurf_5_thinking_page", "next", "menu_page"));

    transitions.add(Transition("menu_page", "meditate", "meditate_load_page"));
    transitions.add(Transition("meditate_load_page", "back", "menu_page"));
    transitions.add(Transition("meditate_load_page", "next", "meditate_0_begin_page"));
    transitions.add(Transition("meditate_0_begin_page", "back", "menu_page"));
    transitions.add(Transition("meditate_0_begin_page", "next", "meditate_1_menu_page"));

    transitions.add(Transition("meditate_1_menu_page", "back", "meditate_0_begin_page"));
    transitions.add(Transition("meditate_1_menu_page", "next", "meditate_2_play_page"));
    transitions.add(Transition("meditate_2_play_page", "back", "meditate_1_menu_page"));
    transitions.add(Transition("meditate_2_play_page", "next", "meditate_3_like_page"));
    transitions.add(Transition("meditate_3_like_page", "back", "meditate_2_play_page"));
    transitions.add(Transition("meditate_3_like_page", "next", "menu_page"));

//imagine
    transitions.add(Transition("imagine_load_page", "next", "imagine_0_begin_page"));
    transitions.add(Transition("imagine_0_begin_page", "back", "imagine_load_page"));

    transitions.add(Transition("imagine_0_begin_page", "next", "imagine_1_you_page"));
    transitions.add(Transition("imagine_1_you_page", "back", "imagine_0_begin_page"));


    transitions.add(Transition("imagine_1_you_page", "next", "imagine_2_take_page"));
    transitions.add(Transition("imagine_2_take_page", "back", "imagine_1_you_page"));

    transitions.add(Transition("imagine_2_take_page", "next", "imagine_3_imaging_page"));
    transitions.add(Transition("imagine_3_imaging_page", "back", "imagine_2_take_page"));

    transitions.add(Transition("imagine_3_imaging_page", "next", "imagine_4_color_page"));
    transitions.add(Transition("imagine_4_color_page", "back", "imagine_3_imaging_page"));
    transitions.add(Transition("imagine_4_color_page", "next", "imagine_5_shape_page"));
    transitions.add(Transition("imagine_5_shape_page", "back", "imagine_4_color_page"));
    transitions.add(Transition("imagine_5_shape_page", "next", "imagine_6_remember_page"));

    transitions.add(Transition("imagine_6_remember_page", "back", "imagine_5_shape_page"));
    transitions.add(Transition("imagine_6_remember_page", "next", "imagine_7_using_page"));

    transitions.add(Transition("imagine_7_using_page", "back", "imagine_6_remember_page"));
    transitions.add(Transition("imagine_7_using_page", "next", "imagine_8_like_page"));

    transitions.add(Transition("imagine_8_like_page", "back", "imagine_7_using_page"));

    transitions.add(Transition("imagine_8_like_page", "next", "menu_page"));

    //notice
    transitions.add(Transition("notice_load_page", "next", "notice_0_begin_page"));
    transitions.add(Transition("notice_0_begin_page", "back", "menu_page"));

    transitions.add(Transition("notice_0_begin_page", "next", "notice_1_this_page"));
    transitions.add(Transition("notice_1_this_page", "back", "notice_0_begin_page"));

    transitions.add(Transition("notice_1_this_page", "next", "notice_2_experiencing_page"));
    transitions.add(Transition("notice_2_experiencing_page", "back", "notice_1_this_page"));

    transitions.add(Transition("notice_2_experiencing_page", "next", "notice_3_take_page"));
    transitions.add(Transition("notice_3_take_page", "back", "notice_2_experiencing_page"));


    transitions.add(Transition("notice_3_take_page", "next", "notice_4_one_page"));
    transitions.add(Transition("notice_4_one_page", "back", "notice_3_take_page"));
    transitions.add(Transition("notice_4_one_page", "next", "notice_5_strong_page"));
    transitions.add(Transition("notice_5_strong_page", "back", "notice_4_one_page"));
    transitions.add(Transition("notice_5_strong_page", "next", "notice_6_feel_page"));
    transitions.add(Transition("notice_6_feel_page", "back", "notice_5_strong_page"));
    transitions.add(Transition("notice_6_feel_page", "next", "notice_7_mood_page"));
    transitions.add(Transition("notice_7_mood_page", "back", "notice_6_feel_page"));
    transitions.add(Transition("notice_7_mood_page", "next", "notice_8_notcing_page"));

    transitions.add(Transition("notice_8_notcing_page", "back", "notice_7_mood_page"));

    transitions.add(Transition("notice_8_notcing_page", "next", "notice_9_like_page"));
    transitions.add(Transition("notice_9_like_page", "back", "notice_8_notcing_page"));

    transitions.add(Transition("notice_9_like_page", "next", "menu_page"));


    transitions.add(Transition("menu_page", "joy", "joy_load_page"));
    transitions.add(Transition("joy_load_page", "back", "menu_page"));
    transitions.add(Transition("joy_load_page", "next", "joy_0_begin_page"));
    transitions.add(Transition("joy_0_begin_page", "back", "menu_page"));
    transitions.add(Transition("joy_0_begin_page", "next", "joy_1_deep_page"));
    transitions.add(Transition("joy_1_deep_page", "back", "joy_0_begin_page"));
    transitions.add(Transition("joy_1_deep_page", "next", "joy_2_slowly_page"));
    transitions.add(Transition("joy_2_slowly_page", "back", "joy_1_deep_page"));
    transitions.add(Transition("joy_2_slowly_page", "next", "joy_3_now_page"));
    transitions.add(Transition("joy_3_now_page", "back", "joy_2_slowly_page"));
    transitions.add(Transition("joy_3_now_page", "next", "joy_4_select_page"));
    transitions.add(Transition("joy_4_select_page", "back", "joy_3_now_page"));
    transitions.add(Transition("joy_4_select_page", "next", "joy_5_timer_page"));
    transitions.add(Transition("joy_5_timer_page", "back", "joy_4_select_page"));
    transitions.add(Transition("joy_5_timer_page", "next", "joy_7_whenever_page"));
    transitions.add(Transition("joy_5_timer_page", "complete", "joy_6_complete_page"));
    transitions.add(Transition("joy_6_complete_page", "back", "joy_4_select_page"));
    transitions.add(Transition("joy_6_complete_page", "next", "joy_7_whenever_page"));
    transitions.add(Transition("joy_7_whenever_page", "back", "joy_4_select_page"));
    transitions.add(Transition("joy_7_whenever_page", "next", "joy_8_like_page"));
    transitions.add(Transition("joy_8_like_page", "back", "joy_7_whenever_page"));
    transitions.add(Transition("joy_8_like_page", "next", "menu_page"));
  }
}

class Transition {
  final String from;
  final String input;
  final String to;

  Transition(this.from, this.input, this.to);
}
