import 'package:flutter/material.dart';

void main() => runApp(MeditateMenu());

class MeditateMenu extends StatelessWidget {
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
  return Container(padding: EdgeInsets.all(30),child: Column(

    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[

      Image.asset(
        'assets/meditate.png',
        width: 100,
        height: 100,
      ),
      Text('meditate', textAlign: TextAlign.right, textScaleFactor: 1.5, style: TextStyle(color: Colors.white),),
      Padding(
        padding: EdgeInsets.all(35),
      ),

      ListTile(
        leading: Text('self', textAlign: TextAlign.right, textScaleFactor: 1.5, style: TextStyle(color: Colors.white),),

        title:  Container(
          height: 80.0,
          width: 80.0,
          child: FittedBox(
            child:         FloatingActionButton(
              backgroundColor: Colors.grey,
              child: Text('rock', textAlign: TextAlign.center, style: TextStyle(color:Colors.black),),
              onPressed: () => {},
            ),

          ),
        ),

        trailing:  Container(
          height: 80.0,
          width: 80.0,
          child: FittedBox(
            child:         FloatingActionButton(
              backgroundColor: Colors.pink[300],
              child: Text('wish', textAlign: TextAlign.center, style: TextStyle(color:Colors.black),),
              onPressed: () => {},
            ),

          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(5),
      ),

      ListTile(
        leading: Text('breath', textAlign: TextAlign.right, textScaleFactor: 1.5, style: TextStyle(color: Colors.white),),

        title:  Container(
          height: 80.0,
          width: 80.0,
          child: FittedBox(
            child:         FloatingActionButton(
              backgroundColor: Colors.purple,
              child: Text('space', textAlign: TextAlign.center, style: TextStyle(color:Colors.black),),
              onPressed: () => {},
            ),

          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(5),
      ),

      ListTile(

        leading: Text('body', textAlign: TextAlign.right, textScaleFactor: 1.5, style: TextStyle(color: Colors.white),),

        title:  Container(
          height: 80.0,
          width: 80.0,
          child: FittedBox(
            child:         FloatingActionButton(
              backgroundColor: Colors.lightGreenAccent,
              child: Text('flow', textAlign: TextAlign.center, style: TextStyle(color:Colors.black),),
              onPressed: () => {},
            ),

          ),
        ),

        trailing: Container(
          height: 80.0,
          width: 80.0,
          child: FittedBox(
            child:         FloatingActionButton(
              backgroundColor: Colors.orange,
              child: Text('scan', textAlign: TextAlign.center, style: TextStyle(color:Colors.black),),
              onPressed: () => {},
            ),

          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(5),
      ),

      ListTile(

        leading: Text('urge', textAlign: TextAlign.right, textScaleFactor: 1.5, style: TextStyle(color: Colors.white),),

        title:  Container(
          height: 80.0,
          width: 80.0,
          child: FittedBox(
            child:         FloatingActionButton(
              backgroundColor: Colors.redAccent,
              child: Text('wave', textAlign: TextAlign.center, style: TextStyle(color:Colors.black),),
              onPressed: () => {},
            ),

          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(5),
      ),

    ],
  )
  );
}