import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget getPlayTime(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(16),
    width: 318,
    height: 390,
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.6),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 15, left: 10),
          child: Container(
            child: Text(
              "1. Open Steam.",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 16, color: Colors.white, fontFamily: 'lato'),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25),
          child: Text(
            "Go to your Library and select Dota 2. ",
            textAlign: TextAlign.start,
            style:
                TextStyle(fontSize: 14, color: Colors.grey, fontFamily: 'lato'),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 25)),
        Center(
          child: Container(
              alignment: Alignment.center,
              width: 315,
              child: Divider(
                thickness: 1,
                color: Colors.white.withOpacity(0.6),
              )),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15, left: 10),
          child: Container(
            child: Text(
              "2. Next to The Play button.",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontFamily: 'lato',
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25),
          child: Text(
            "It shows your play time right here. ",
            textAlign: TextAlign.start,
            style:
                TextStyle(fontSize: 14, color: Colors.grey, fontFamily: 'lato'),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        Image(image: AssetImage("images/guide-playtime.png")),
        Padding(padding: EdgeInsets.only(top: 30)),
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Center(
            child: Container(
              alignment: Alignment.center,
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                border:
                    Border.all(width: 1, color: Colors.white.withOpacity(0.6)),
              ),
              child: Text("Back",
                  style: TextStyle(color: Colors.white, fontFamily: 'lato')),
            ),
          ),
        ),
      ],
    ),
  );
}
