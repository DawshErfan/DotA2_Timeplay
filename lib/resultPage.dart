import 'package:dota2_timeplay/custom/hellmates.dart';
import 'package:flutter/material.dart';

class resultPage extends StatefulWidget {
  final double wastedHours;
  final String name;
  final String iName;

  resultPage({
    super.key,
    required this.wastedHours,
    required this.name,
    required this.iName,
  });

  @override
  State<resultPage> createState() => _resultPageState();
}

class _resultPageState extends State<resultPage> {
  late double wastedHours;
  late String name;
  late String iName;

  @override
  void initState() {
    super.initState();
    wastedHours = widget.wastedHours;
    name = widget.name;
    iName = widget.iName;
  }

  @override
  Widget build(BuildContext context) {
    final getWidht = MediaQuery.of(context).size.width;
    final getHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
              width: getWidht,
              height: getHeight,
              padding: EdgeInsets.only(left: 16, right: 16),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/resp.jpg"), fit: BoxFit.cover)),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 121)),
                    conditions(),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Text(
                      "Share this program with your friends so they can see how much they have played.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        fontFamily: 'lato',
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 28)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              top: 12, bottom: 12, left: 16, right: 16),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.6),
                            border: Border.all(
                                color: Color.fromARGB(255, 90, 90, 90),
                                width: 1.5),
                          ),
                          width: getWidht * 0.9,
                          height: 50,
                          child: SelectableText(
                            textAlign: TextAlign.center,
                            "https://bettercallus.github.io/Dota2playtime",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'lato',
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 16)),
                    Container(
                        width: 89,
                        height: 45,
                        child: Image(image: AssetImage("images/share.png"))),
                    Padding(padding: EdgeInsets.only(top: 90)),
                    getHellmates(context),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget conditions() {
    double mon = 0;
    double years = 0;
    double remainingDays = wastedHours;
    String outPut = "";
    while (remainingDays >= 30) {
      mon++;
      remainingDays -= 30;
      if (mon == 12) {
        years++;
        mon = 0;
      }
    }
    if (remainingDays > 0) {
      outPut += "${remainingDays.toInt()} Days";
    }

    if (mon > 0) {
      outPut = "${mon.toInt()} Months, $outPut";
    }
    // Construct the output string
    if (years > 0) {
      outPut = "${years.toInt()} Years, $outPut";
    }

    if (outPut.isEmpty) {
      outPut = "0 Days";
    }

    return Text(
      outPut,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 40,
        color: Colors.orange,
        fontFamily: 'alb',
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
