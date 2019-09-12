import 'package:flutter/material.dart';

class MoodSurfMainPage extends StatefulWidget {

  @override
  _MoodSurfMainPageState createState() => _MoodSurfMainPageState();
}

class _MoodSurfMainPageState extends State<MoodSurfMainPage> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: Stack(
        children: <Widget>[
          Center(
            child: new Image.asset(
              'assets/moodsurf_1.jpg',
              width: size.width,
              height: size.height,

              fit: BoxFit.cover,
            ),
          ),
            Container(child: Column(children: <Widget>[
    SizedBox(height: 100),
    Expanded(child:
    Container(
      padding: EdgeInsets.all(32),
      width: double.infinity,
      child:
    Text("Begin by relaxing and focusing on your thoughts",
    textAlign: TextAlign.center,
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 28.0,
    color: Colors.black)),
    ),
    ),
              ListTile(
                leading: IconButton(
                  icon: Icon(Icons.keyboard_arrow_left, color: Colors.white,size: 40,),
                  onPressed: (){

                  },
                ),
                title: IconButton(
                  icon: Icon(Icons.volume_up, color: Colors.white,size: 40,),
                  onPressed: (){

                  },
                ),
                trailing: IconButton(
                  icon: Icon(Icons.keyboard_arrow_right, color: Colors.white,size: 24,),
                  onPressed: (){

                  },
                ),

              )
            ],)
            ),

        ],
      ),
    );
  }
}
