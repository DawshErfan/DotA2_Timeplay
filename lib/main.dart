import 'package:dota2_timeplay/playtime_calculator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(application());
}

class application extends StatelessWidget {
  const application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: playTimeCalc(), 
    );
  }
}
