import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'imagine_abstract.dart';

class ImagineRemember extends ImagineAbstract {
  ImagineRemember(
      String curState, callback, callbackLog)
      : super(curState, callback, callbackLog, 'assets/imagine_4.png');

  @override
  Widget myWidget(BuildContext context, Function() refresh) {
    return Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 140)),
        Text(
          'Remember the thought or\nfeeling you started with,\nthere it is on the table as\nas object.',
          textAlign: TextAlign.center,
          style:
              TextStyle(color: Colors.black54, fontWeight: FontWeight.normal),
        ),
        Expanded(child: Container()),
        Text(
          'You can leave it there or you\ncan come back later and\nrevisit it.',
          textAlign: TextAlign.center,
          style:
          TextStyle(color: Colors.black54, fontWeight: FontWeight.normal),
        ),
        Padding(padding: EdgeInsets.only(top: 70)),
      ],
    );
  }
}
