import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/block_picker.dart';

import 'imagine_abstract.dart';

class ImagineColorChoose extends ImagineAbstract {
  ImagineColorChoose(String curState, callback, callbackLog)
      : super(curState, callback, callbackLog, 'assets/imagine_1.png');
  Color pickerColor = Color(0xffffff);
  Color currentColor = Color(0xffffff);
  @override
  Future<void> init() {
    pickerColor = Color(0xffffff);
    currentColor = Color(0xffffff);
    return super.init();
  }
  @override
  Future<void> start() {
    return super.start();
  }
  @override
  Future<void> stop() {
    return super.stop();
  }

  @override
  Widget myWidget(BuildContext context, Function() refresh) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 120),
        ),
        Text(
          'What color is the object\nyou\'re imagining?',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
        Padding(
          padding: EdgeInsets.only(top: 30),
        ),

//        SingleChildScrollView(

/*
          ColorPicker(
            pickerColor: pickerColor,
            onColorChanged: (Color color){
              pickerColor = color;
              refresh();
            },
            enableLabel: false,
            pickerAreaHeightPercent: 0.8,
          ),
*/

          // Use Material color picker:
          //
/*
           child: MaterialPicker(
             pickerColor: pickerColor,
             onColorChanged: (Color color){
               pickerColor = color;
               refresh();
             },
             enableLabel: true, // only on portrait mode
           ),
*/
          //
          // Use Block color picker:
          //

           BlockPicker(
             pickerColor: pickerColor,
             layoutBuilder: (BuildContext context, List<Color> colors, PickerItem child){
               Orientation orientation = MediaQuery.of(context).orientation;
               return Container(
                 width: orientation == Orientation.portrait ? 350.0 : 350.0,
                 height: orientation == Orientation.portrait ? 300.0 : 200.0,
                 child: GridView.count(
                   crossAxisCount: orientation == Orientation.portrait ? 6 : 6,
                   crossAxisSpacing: 5.0,
                   mainAxisSpacing: 5.0,
                   children: colors.map((Color color) => child(color)).toList(),
                 ),
               );
             },
             onColorChanged: (Color color){
               pickerColor = color;
               callbackLog(curState, "color_chooser", "value="+color.value.toRadixString(16));
               refresh();
             },
             availableColors: [
               Colors.red,
               Colors.redAccent,
               Colors.pink,
               Colors.purple,
               Colors.deepPurple,
               Colors.indigo,
               Colors.blue,
               Colors.blueAccent,
               Colors.lightBlue,
               Colors.cyan,
               Colors.teal,
               Colors.green,
               Colors.greenAccent,
               Colors.lightGreen,
               Colors.lightGreenAccent,
               Colors.lime,
               Colors.limeAccent,
               Colors.yellow,
               Colors.amber,
               Colors.amberAccent,
               Colors.orange,
               Colors.orangeAccent,
               Colors.deepOrange,
               Colors.deepOrangeAccent,
               Colors.brown,
               Colors.white,
               Colors.grey[300],
               Colors.grey,
               Colors.blueGrey,
               Colors.black,
             ],
        ),

      ],
    );
  }
}
