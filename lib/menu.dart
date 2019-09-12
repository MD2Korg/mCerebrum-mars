import 'package:flutter/material.dart';

void main() => runApp(Menu());

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,


      home: Scaffold(
        backgroundColor: const Color(0xFF383636),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

// replace this function with the code in the examples
Widget _myListView(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Column(

    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[

      Image.asset(
        'assets/mars.png',
        width: 100,
        height: 100,
      ),
      Padding(
        padding: EdgeInsets.all(20),
      ),
      ListTile(

        title: Text('moodsurf', textAlign: TextAlign.center, textScaleFactor: 1.5, style: TextStyle(color: Colors.blue),),
        trailing: Image.asset(
          'assets/moodsurf.jpg',
          width: 150,
          height: 150,
        ),
      ),
      Padding(
          padding: EdgeInsets.all(15),
      ),

      ListTile(
        title: Text('meditate', textAlign: TextAlign.center, textScaleFactor: 1.5, style: TextStyle(color: Colors.purple),),
        trailing: Image.asset(
          'assets/meditate.png',
          width: 150,
          height: 150,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(15),
      ),
      ListTile(
        title: Text('imagine', textAlign: TextAlign.center, textScaleFactor: 1.5, style: TextStyle(color: Colors.red),),
        trailing: Image.asset(
          'assets/imagine.png',
          width: 150,
          height: 150,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(15),
      ),
      ListTile(
        title: Text('notice', textAlign: TextAlign.center, textScaleFactor: 1.5, style: TextStyle(color: Colors.amber),),
        trailing: Image.asset(
          'assets/notice.png',
          width: 150,
          height: 150,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(15),
      ),
      ListTile(
        title: Text('joy', textAlign: TextAlign.center, textScaleFactor: 1.5, style: TextStyle(color: Colors.green),),
        trailing: Image.asset(
          'assets/joy.png',
          width: 150,
          height: 150,
        ),
      ),
    ],
  );
}