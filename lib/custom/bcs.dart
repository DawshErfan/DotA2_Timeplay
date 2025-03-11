import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';

class getBCS extends StatelessWidget {
  const getBCS({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
            onTap: () {
              //openMyGH();
            },
            child: Image(image: AssetImage("images/bcu.png"))),
        GestureDetector(
          onTap: () {
            //openMyGH();
          },
          child: Text(
            "BETTER CALL US",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'sri',
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
/*
openMyGH() async {
  final Uri url = Uri.parse('https://github.com/DawshErfan');
  if (!await launchUrl(url)) {
    throw Exception('Cannot find the link');
  }
}
*/