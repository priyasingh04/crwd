import 'package:flutter/material.dart';

import '../utils/strings.dart';


class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(child:
      Center(
        child: Stack(
      children: [
        Positioned(
          top: 60,
          left: 190,
          child: Image.asset(
            "assets/green.png",
            height: 135,
            width: 131,
          ),
        ),
        Positioned(
          top: 40,
          left: 36,
          child: Image.asset(
            "assets/yellow.png",
            height: 212,
            width: 202,
          ),
        ),
        Positioned(
          top: 160,
          left: 141,
          child: Image.asset(
            "assets/white.png",
            height: 170,
            width: 180,
          ),
        ),
          Positioned(bottom: 55,left: 30,right: 30,
              child:
          Column(
            children: const [
              Padding(
                  padding:
                  EdgeInsets.only(left: 15, right: 15, top: 15)),
              Text(
                CommonString.createFindAndJoinYourEventNow,
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,fontFamily: "Raleway",
                ),
              ),
              Text(CommonString.eventNow,
                  style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,fontFamily: "Raleway")),

      ],
          ))])
    ),
    ));
  }
}
