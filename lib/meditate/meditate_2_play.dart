import 'dart:async';
import 'dart:io';

import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:mars/meditate/meditate_abstract.dart';

enum PlayerState { stopped, playing, paused }

class MeditatePlay extends MeditateAbstract {

  PlayerMode mode=PlayerMode.MEDIA_PLAYER;
  AudioCache audioCache;

  AudioPlayer _audioPlayer;
  AudioPlayerState _audioPlayerState;
  Duration _duration;
  Duration _position;

  PlayerState _playerState = PlayerState.stopped;
  StreamSubscription _durationSubscription;
  StreamSubscription _positionSubscription;
  StreamSubscription _playerCompleteSubscription;
  StreamSubscription _playerErrorSubscription;
  StreamSubscription _playerStateSubscription;
  String filePath;

  Function() refresh;

  get _isPlaying => _playerState == PlayerState.playing;
  get _isPaused => _playerState == PlayerState.paused;
  get _durationText {
    if(_duration==null) return "";
    String min =  _duration.inMinutes.toString();
    String sec =  (_duration.inSeconds-_duration.inMinutes*60).toString();
    if(sec.length==1) sec = "0"+sec;
    return min+":"+sec;
}
  get _positionText {
    if(_position==null) return "";
    String min =  _position.inMinutes.toString();
    String sec =  (_position.inSeconds-_position.inMinutes*60).toString();
    if(sec.length==1) sec = "0"+sec;
    return min+":"+sec;
  }


  MeditatePlay(String curState, callback, callbackLog)
      : super(curState, callback, callbackLog, 'assets/meditate_2.png', hasBack:true, hasForward:true, hasVolume:false);

  @override
  Widget myWidget(BuildContext context, Function() refresh) {
    this.refresh = refresh;
    return Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 120),
      ),
      Container(
        height: 80.0,
        width: 80.0,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: getColor(data),
            onPressed: () {
//              callback(curState, "next", null);
            },
          ),
        ),
      ),

      Text(data,
        textAlign: TextAlign.center,
        style: TextStyle(color: getColor(data)),
      ),
      Padding(padding: EdgeInsets.only(top:120),),
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            disabledColor: Colors.grey,
              onPressed: _isPlaying ? null : () => _play(),
              iconSize: 64.0,
              icon: Icon(Icons.play_arrow),
              color: getColor(data)),
          IconButton(
              disabledColor: Colors.grey,
              onPressed: _isPlaying ? () => _pause() : null,
              iconSize: 64.0,
              icon: Icon(Icons.pause),
              color: getColor(data)),
          IconButton(
              onPressed: _isPlaying || _isPaused ? () => _stop() : null,
              disabledColor: Colors.grey,
              iconSize: 64.0,
              icon: Icon(Icons.stop),
              color: getColor(data)),
        ],
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Stack(
              children: [
                Slider(
                  activeColor: getColor(data),
                  onChanged: (v) {
                    final Position = v * _duration.inMilliseconds;
                    _audioPlayer
                        .seek(Duration(milliseconds: Position.round()));
                  },
                  value: (_position != null &&
                      _duration != null &&
                      _position.inMilliseconds > 0 &&
                      _position.inMilliseconds < _duration.inMilliseconds)
                      ? _position.inMilliseconds / _duration.inMilliseconds
                      : 0.0,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(12),),
            Text(
              _position != null
                  ? '${_positionText ?? ''}'
                  : _duration != null ? _durationText : '',
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
            Expanded(child: Container(),),
            Text(
              _position != null
                  ? '${_durationText ?? ''}'
                  : _duration != null ? _durationText : '',
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
              Padding(padding: EdgeInsets.all(12),),

          ],),
/*
          Text(
            _position != null
                ? '${_positionText ?? ''} / ${_durationText ?? ''}'
                : _duration != null ? _durationText : '',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
  */
        ],
      )
    ]);
  }
  String getAudio(String d){
    switch(d){
      case "peak":return "peak.mp3";
      case "breath":return "breath.mp3";
      case "walk":return "walk.mp3";
      case "intro":return "intro.mp3";
      case "mind":return "mind.mp3";
      case "aware":return "aware.mp3";
      case "body":return "body.mp3";
      case "sound":return "sound.mp3";
    }
    return "peak.mp3";;

  }
  Color getColor(String d){
    switch(d){
      case "peak":return Color(0xff99eafa);
      case "breath":return Color(0xffbc5bf0);
      case "walk":return Color(0xffff94d5);
      case "intro":return Color(0xffa2a2a2);
      case "mind":return Color(0xffc6ff7d);
      case "aware":return Color(0xffFF5959);
      case "body":return Color(0xffD6AB88);
      case "sound":return Color(0xffFF9540);
    }
    return Color(0xff99eafa);
  }
  Future<int> _play() async {
    final playPosition = (_position != null &&
        _duration != null &&
        _position.inMilliseconds > 0 &&
        _position.inMilliseconds < _duration.inMilliseconds)
        ? _position
        : null;
    final result = await _audioPlayer.play(filePath, isLocal: true, position: playPosition);
    if(result==1) {
      _playerState = PlayerState.playing;
      if(refresh!=null) refresh();
    }
      return result;
    }

  Future<int> _pause() async {
    final result = await _audioPlayer.pause();
    if (result == 1) {
      _playerState = PlayerState.paused;
      if(refresh!=null) refresh();
  }
      return result;
    }

  Future<int> _stop() async {
    final result = await _audioPlayer.stop();
    if (result == 1) {
      _playerState = PlayerState.stopped;
      _position = Duration();
      if(refresh!=null) refresh();
    }
    return result;
  }
  @override
  Future<void> stop() async{
    await _stop();
    await _audioPlayer.release();
    audioCache.clearCache();

    _durationSubscription?.cancel();
    _positionSubscription?.cancel();
    _playerCompleteSubscription?.cancel();
    _playerErrorSubscription?.cancel();
    _playerStateSubscription?.cancel();
  }
  @override
  Future<void> init() async{
  }
  @override
  Future<void> start() async{
    await _initAudioPlayer();
    _play();
  }

  Future<void> _initAudioPlayer() async {
    _audioPlayer = AudioPlayer(mode: mode);
    audioCache = AudioCache();
    File f = await audioCache.load(getAudio(data));
    filePath = f.path;
    _durationSubscription = _audioPlayer.onDurationChanged.listen((duration) {
      _duration = duration;
      if(refresh!=null)
      refresh();
    });
    _positionSubscription =
        _audioPlayer.onAudioPositionChanged.listen((p) {
          _position = p;
          if(refresh!=null)
          refresh();
        });

    _playerCompleteSubscription =
        _audioPlayer.onPlayerCompletion.listen((event) {
          _playerState = PlayerState.stopped;
          _position = _duration;
          if(refresh!=null)
          refresh();
        });

    _playerErrorSubscription = _audioPlayer.onPlayerError.listen((msg) {
      print('audioPlayer error : $msg');
      _playerState = PlayerState.stopped;
      _duration = Duration(seconds: 0);
      _position = Duration(seconds: 0);
      if(refresh!=null)
      refresh();
    });

    _playerStateSubscription = _audioPlayer.onPlayerStateChanged.listen((state) {
      _audioPlayerState = state;
      if(refresh!=null)
      refresh();
    });

/*
    _audioPlayer.onNotificationPlayerStateChanged.listen((state) {
      _audioPlayerState = state;
      refresh();
    });
*/
  }
}
