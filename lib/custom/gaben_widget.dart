import 'package:flutter/material.dart';

Widget getGabeN() {
  return Container(
    padding: EdgeInsets.all(16),
    width: 318,
    height: 123,
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.6),
    ),
    child: Row(
      children: [
        Image(
          image: AssetImage("images/gaben.png"),
        ),
        Padding(padding: EdgeInsets.only(right: 16)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "GABEN",
              style: TextStyle(
                  fontFamily: 'alb',
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
            ),
            Container(
              width: 197,
              child: Text(
                "The creator and owner of DOTA 2, he is the reason for wasting your time.",
                style: TextStyle(fontFamily: 'lato', color: Colors.grey[700]),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
