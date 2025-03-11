import 'package:dota2_timeplay/custom/bottom_texts.dart';
import 'package:dota2_timeplay/custom/gaben_widget.dart';
import 'package:dota2_timeplay/resultPage.dart';
import 'package:flutter/material.dart';

class playTimeCalc extends StatefulWidget {
  const playTimeCalc({super.key});

  @override
  State<playTimeCalc> createState() => _playTimeCalcState();
}

class _playTimeCalcState extends State<playTimeCalc> {
  //// Input Controllers ****************************
  var playTime = TextEditingController();
  var userName = TextEditingController();
  var introducerName = TextEditingController();
  //// Input Controllers ****************************
  @override
  Widget build(BuildContext context) {
    final getWidht = MediaQuery.of(context).size.width;
    final getHeight = MediaQuery.of(context).size.height;
    return Scaffold(
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
              Text(
                "DOTA2 PLAYTIME",
                style: TextStyle(
                  fontFamily: 'alb',
                  fontWeight: FontWeight.w400,
                  fontSize: 36,
                  color: Colors.white,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 41)),
              Container(
                  padding:
                      EdgeInsets.only(top: 12, bottom: 12, left: 16, right: 16),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                    border: Border.all(
                        color: Color.fromARGB(255, 90, 90, 90), width: 1.5),
                  ),
                  width: 318,
                  height: 50,
                  child: TextField(
                    controller: userName,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.white, fontFamily: 'lato'),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Name",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'lato',
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  )),
              Padding(padding: EdgeInsets.only(top: 12)),
              Container(
                  padding:
                      EdgeInsets.only(top: 12, bottom: 12, left: 16, right: 16),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                    border: Border.all(
                        color: Color.fromARGB(255, 90, 90, 90), width: 1.5),
                  ),
                  width: 318,
                  height: 50,
                  child: TextField(
                    controller: playTime,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.white, fontFamily: 'lato'),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Playtime(h)",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'lato',
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  )),
              Padding(padding: EdgeInsets.only(top: 12)),
              Container(
                  padding:
                      EdgeInsets.only(top: 12, bottom: 12, left: 16, right: 16),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                    border: Border.all(
                        color: Color.fromARGB(255, 90, 90, 90), width: 1.5),
                  ),
                  width: 318,
                  height: 50,
                  child: TextField(
                    enabled: false,
                    controller: introducerName,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.white, fontFamily: 'lato'),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Who put you into this misery?",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'lato',
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  )),
              Padding(padding: EdgeInsets.only(top: 70)),
              InkWell(
                  onTap: () {
                    if (playTime.text.isEmpty) {
                      playTime.text = "0";
                    }
                    print(userName.text + " user's name");
                    print(playTime.text + " user's timeplay");
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return resultPage(
                            wastedHours: double.parse(playTime.text) / 24,
                            name: userName.text,
                            iName: introducerName.text,
                          );
                        },
                      ),
                    );
                  },
                  child: Container(
                      child:
                          Image(image: AssetImage("images/btn-primary.jpg")))),
              Padding(padding: EdgeInsets.only(top: 100)),
              getGabeN(),
              Padding(padding: EdgeInsets.only(top: 21)),
              getBottomTexts(context),
            ],
          ),
        ),
      )),
    );
  }
}
