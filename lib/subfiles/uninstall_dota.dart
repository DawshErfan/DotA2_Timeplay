import 'package:dota2_timeplay/custom/bcs.dart';
import 'package:dota2_timeplay/custom/uninstall.dart';
import 'package:flutter/material.dart';

class uninstallDotA extends StatelessWidget {
  const uninstallDotA({super.key});

  @override
  Widget build(BuildContext context) {
    final getWidht = MediaQuery.of(context).size.width;
    final getHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Container(
          width: getWidht,
          height: getHeight,
          padding: EdgeInsets.only(top: 43, left: 21, right: 21),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/bg.jpg"), fit: BoxFit.fitHeight),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                uninstallDotA2(context),
                Padding(padding: EdgeInsets.only(top: 80)),
                getBCS(),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
