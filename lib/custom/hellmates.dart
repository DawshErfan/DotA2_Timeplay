import 'package:flutter/material.dart';

Widget getHellmates(BuildContext context) {
  final getWidht = MediaQuery.of(context).size.width;
  final getHeight = MediaQuery.of(context).size.height;
  return Column(
    children: [
      Text(
        "Hell-Mates",
        style: TextStyle(
          fontFamily: 'lato',
          fontWeight: FontWeight.w400,
          color: Colors.white,
          fontSize: 18,
        ),
      ),
      Padding(padding: EdgeInsets.only(top: 16)),
      Container(
        width: getWidht * 0.7,
        height: getHeight * 0.4,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.6),
          borderRadius: BorderRadius.circular(8),
          border:
              Border.all(color: Color.fromARGB(255, 90, 90, 90), width: 1.5),
        ),
        child: Center(
          child: Text(
            "Coming Soon",
            style: TextStyle(
              fontFamily: 'lato',
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontSize: 40,
            ),
          ),
        ),
      ),
    ],
  );
}
