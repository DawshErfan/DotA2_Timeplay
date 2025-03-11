import 'package:dota2_timeplay/custom/bcs.dart';
import 'package:dota2_timeplay/subfiles/playTimePage.dart';
import 'package:dota2_timeplay/subfiles/uninstall_dota.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget getBottomTexts(BuildContext context) {
  return Column(
    children: [
      InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return playTime();
              },
            ),
          );
        },
        child: Text(
          "HOW DO I GET MY PLAYTIME?",
          style: TextStyle(
            fontFamily: 'alb',
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ),
      Padding(padding: EdgeInsets.only(top: 21)),
      InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return uninstallDotA();
              },
            ),
          );
        },
        child: Text(
          "HOW CAN I UNINSTALL DOTA2?",
          style: TextStyle(
            fontFamily: 'alb',
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ),
      Padding(padding: EdgeInsets.only(top: 21)),
      getBCS(),
    ],
  );
}
