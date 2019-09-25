import 'package:flutter/material.dart';

class NoticeExperience extends StatelessWidget {
  final String curState;
  final void Function(String, String) callback;
  int sl=0;

  NoticeExperience(this.curState, this.callback);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _myListView(context),
      backgroundColor: Colors.white,

    );
  }

// replace this function with the code in the examples
  Widget _myListView(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Expanded(child:
        Column(

            children:<Widget>[
              Padding(
                padding: EdgeInsets.all(25),
              ),
        Image.asset(
          'assets/notice_white.png',
          width: 70,
          height: 70,
        ),
              Padding(
                padding: EdgeInsets.all(5),
              ),
        Text(
          'Are you experiencing any...\n(select all that apply)',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
              Padding(
                padding: EdgeInsets.all(5),
              ),

        Padding(
          padding: EdgeInsets.all(5),
        ),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: 130.0,
                    child: SizedBox(
                      child: RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        child: Text(
                          'tension',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: ()  {
                          sl=1;
                          //  widget.callback(widget.curState, "wish"),
                        },
                      ),
                    ),
                  ),

                  Container(
                    height: 40.0,
                    width: 130.0,
                    child: SizedBox(
                        child:RaisedButton(
                          // background: Colors.pink[300],
                            color: Colors.white,
                            shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                          child: Text(
                            'calmness',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () {
                            sl=1;

                          }
                        ),
                    ),
                  ),

                ],),
              Padding(
                padding: EdgeInsets.all(5),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: 130.0,
                    child: SizedBox(
                      child: RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        // background: Colors.pink[300],
                        child: Text(
                          'shakiness',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () => {
                          //  widget.callback(widget.curState, "wish"),
                        },
                      ),
                    ),
                  ),

                  Container(
                    height: 40.0,
                    width: 130.0,
                    child: SizedBox(
                      child:RaisedButton(
                        // background: Colors.pink[300],
                        color: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        child: Text(
                          'stillness',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () => {
                          //  widget.callback(widget.curState, "wish"),
                        },
                      ),
                    ),
                  ),

                ],),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: 130.0,
                    child: SizedBox(
                      child: RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        // background: Colors.pink[300],
                        child: Text(
                          'pain',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () => {
                          //  widget.callback(widget.curState, "wish"),
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: 40.0,
                    width: 130.0,
                    child: SizedBox(
                      child:RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        // background: Colors.pink[300],
                        child: Text(
                          'joy',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () => {
                          //  widget.callback(widget.curState, "wish"),
                        },
                      ),
                    ),
                  ),

                ],),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: 130.0,
                    child: SizedBox(
                      child: RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        // background: Colors.pink[300],
                        child: Text(
                          'cig craving',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () => {
                          //  widget.callback(widget.curState, "wish"),
                        },
                      ),
                    ),
                  ),


                  Container(
                    height: 40.0,
                    width: 130.0,
                    child: SizedBox(
                      child: RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        // background: Colors.pink[300],
                        child: Text(
                          'contentment',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () => {
                          //  widget.callback(widget.curState, "wish"),
                        },
                      ),
                    ),
                  ),

                ],),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: 130.0,
                    child: SizedBox(
                      child: RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        // background: Colors.pink[300],
                        child: Text(
                          'restlessness',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () => {
                          //  widget.callback(widget.curState, "wish"),
                        },
                      ),
                    ),
                  ),

                  Container(
                    height: 40.0,
                    width: 130.0,
                    child: SizedBox(
                      child: RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        // background: Colors.pink[300],
                        child: Text(
                          'fluttering',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () => {
                          //  widget.callback(widget.curState, "wish"),
                        },
                      ),
                    ),
                  ),

                ],),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: 130.0,
                    child: SizedBox(
                      child: RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        // background: Colors.pink[300],
                        child: Text(
                          'irritability',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () => {
                          //  widget.callback(widget.curState, "wish"),
                        },
                      ),
                    ),
                  ),

                  Container(
                    height: 40.0,
                    width: 130.0,
                    child: SizedBox(
                      child: RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        // background: Colors.pink[300],
                        child: Text(
                          'excitement',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () => {
                          //  widget.callback(widget.curState, "wish"),
                        },
                      ),
                    ),
                  ),

                ],),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 50.0,
                    width: 230.0,
                    child: FittedBox(
                      child: RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        // background: Colors.pink[300],
                        child: Text(
                          'other physical sensation',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () => {
                          //  widget.callback(widget.curState, "wish"),
                        },
                      ),
                    ),
                  ),

                ],),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 50.0,
                    width: 230.0,
                    child: FittedBox(
                      child: RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder (side: BorderSide (color: Colors.black) ),
                        // background: Colors.pink[300],
                        child: Text(
                          'none of the above',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () => {
                          //  widget.callback(widget.curState, "wish"),
                        },
                      ),
                    ),
                  ),

                ],),



            ])),


        Row(
          children: <Widget>[
            Expanded(child:IconButton(alignment: Alignment.bottomLeft,
              icon: Icon(Icons.keyboard_arrow_left, color: Colors.grey,size: 50,),
              onPressed: (){
                callback(curState, "back");
              },
            ),
            ),
            Expanded(child:IconButton(alignment: Alignment.center,
              icon: Icon(Icons.volume_up, color: Colors.grey,size: 50,),
              onPressed: (){

              },
            ),
            ),
            Expanded(child: IconButton(alignment: Alignment.bottomRight,
              icon: Icon(Icons.keyboard_arrow_right, color: Colors.grey,size: 50,),
              onPressed: (){
                callback(curState, "next");
              },
            ),
            ),
          ],),
        Padding(
          padding: EdgeInsets.all(10),
        ),

      ],
    );
  }
}
