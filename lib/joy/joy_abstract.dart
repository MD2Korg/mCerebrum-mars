import 'dart:async';
import 'dart:io';

import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget_abstract.dart';

abstract class JoyAbstract extends WidgetAbstract {
  PlayerMode mode = PlayerMode.MEDIA_PLAYER;
  AudioCache audioCache;

  AudioPlayer _audioPlayer;
  Duration _duration;
  Duration _position;

  StreamSubscription _durationSubscription;
  StreamSubscription _positionSubscription;
  StreamSubscription _playerCompleteSubscription;
  String filePath;
  bool _isPlay = false;

  JoyAbstract(curState, callback, callbackLog, backgroundImage,
      {hasBack = true,hasForward = true,hasVolume = true,hasLowerBar = true}):super(curState, callback, callbackLog, backgroundImage,hasBack: hasBack, hasForward:hasForward, hasVolume:hasVolume, hasLowerBar:hasLowerBar);

  Widget myWidget(BuildContext context, Function() refresh);
  _JoyAbstractState _joyAbstractState;

  @override
  _JoyAbstractState createState() {_joyAbstractState = _JoyAbstractState();
  return _joyAbstractState;
  }
  Future<int> _play() async {
    final playPosition = (_position != null &&
        _duration != null &&
        _position.inMilliseconds > 0 &&
        _position.inMilliseconds < _duration.inMilliseconds)
        ? _position
        : null;
    final result = await _audioPlayer.play(filePath,
        isLocal: true, position: playPosition);
    return result;
  }

  Future<int> _pause() async {
    final result = await _audioPlayer.pause();
    if (result == 1) {
      _isPlay = false;
      _joyAbstractState.refresh();
    }
    return result;
  }

  Future<int> _stop() async {
    int result = 1;
    if (_audioPlayer != null) result = await _audioPlayer.stop();
    _isPlay = false;
    _position = Duration();
    _joyAbstractState.refresh();
    return result;
  }

  @override
  Future<void> init() async {
    return super.init();
  }
  @override
  Future<void> start() async{
    await _initAudioPlayer();
    return super.start();
  }

  @override
  Future<void> stop() async {
    await _stop();
    await _audioPlayer.release();
    audioCache.clearCache();

    _durationSubscription?.cancel();
    _positionSubscription?.cancel();
    _playerCompleteSubscription?.cancel();
  }

  Future<void> _initAudioPlayer() async {
    _audioPlayer = AudioPlayer(mode: mode);
    audioCache = AudioCache();
    File f = await audioCache.load(curState + ".mp3");
    filePath = f.path;
    _durationSubscription = _audioPlayer.onDurationChanged.listen((duration) {
      _duration = duration;
    });
    _positionSubscription = _audioPlayer.onAudioPositionChanged.listen((p) {
      _position = p;
    });

    _playerCompleteSubscription =
        _audioPlayer.onPlayerCompletion.listen((event) {
          _isPlay = false;
          _position = _duration;
          _joyAbstractState.refresh();
        });
  }

}

class _JoyAbstractState extends State<JoyAbstract> {
  void refresh() {
    if(!mounted) return;
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new WillPopScope(
        onWillPop: () async {
          widget.callbackLog(widget.curState, "back_button", "pressed");
          widget.callback(widget.curState, "back",widget.data);
          return false;
        },
        child: Scaffold(
            body: Stack(children: <Widget>[
          Center(
            child: new Image.asset(
              widget.backgroundImage,
              width: size.width,
              height: size.height,
              fit: BoxFit.cover,
            ),
          ),
          Container(child:
          FlatButton(
            child: Icon(
              CupertinoIcons.home,
              size: 48,
            ),
            highlightColor: Colors.white,
            focusColor: Colors.white,
            onPressed: (){
              widget.callbackLog(widget.curState, "home_button", "pressed");
              showAlertDialog(context);
            },
          ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: widget.myWidget(context, refresh),
                ),
                widget.hasLowerBar?
                Row(
                  children: <Widget>[
                    Expanded(
                      child: widget.hasBack?IconButton(
                        alignment: Alignment.bottomLeft,
                        icon: Icon(
                          CupertinoIcons.left_chevron,
                          color: Colors.black,
                        ),
                        iconSize: 60,
                        onPressed: () {
                          widget.callbackLog(widget.curState, "back_button", "pressed");
                          widget.callback(widget.curState, "back",widget.data);
                        },
                      ):Container(),
                    ),
                    Expanded(
                      child: widget.hasVolume?IconButton(
                        alignment: Alignment.center,
                        icon: Icon(
                          widget._isPlay
                              ? Icons.pause
                              : Icons.volume_up,
                          color: Colors.black,
                        ),
                        iconSize: 50,
                        onPressed: () {
                          widget._isPlay
                              ? widget._pause()
                              : widget._play();
                          widget._isPlay = !widget._isPlay;
                          widget.callbackLog(
                              widget.curState,
                              "audio_button",
                              widget._isPlay ? "play" : "pause");
                          setState(() {});
                        },
                      ):Container(),
                    ),
                    Expanded(
                      child: widget.hasForward?IconButton(
                        alignment: Alignment.bottomRight,
                        icon: Icon(
                          CupertinoIcons.right_chevron,
                          color: Colors.black,
                        ),
                        iconSize: 60,
                        onPressed: () {
                          widget.callbackLog(widget.curState, "next_button", "pressed");
                          widget.callback(widget.curState, "next",widget.data);
                        },
                      ):Container(),
                    ),
                  ],
                ):Container(),
              ],
            ),
          )
        ])));
  }
  showAlertDialog(BuildContext context) {

    // set up the button
    Widget yesButton = FlatButton(
      color: Color(0xffDFA952),
      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
      child: Text("Yes", style: TextStyle(color: Colors.white, fontSize: 18),),
      onPressed: () {
        widget.callbackLog(widget.curState, "quit_exercise", "yes pressed");
        widget.callback(widget.curState, "home",null);
        Navigator.of(context).pop(); // dismiss dialog

      },
    );
    Widget noButton = FlatButton(
      color: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
      child: Text("No", style: TextStyle(color: Colors.white, fontSize: 18),),
      onPressed: () {
        widget.callbackLog(widget.curState, "quit_exercise", "no pressed");
        Navigator.of(context).pop(); // dismiss dialog

      },
    );

    AlertDialog alert = AlertDialog(
      title: Text("Quit Exercise?", textAlign: TextAlign.center,),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          yesButton,
          noButton
        ],
      ),
    shape: RoundedRectangleBorder(side: BorderSide(), borderRadius: new BorderRadius.circular(8.0)),
      backgroundColor: Color(0xffffe5b9),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
