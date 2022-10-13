

import 'package:crwd/utils/common_method.dart';
import 'package:flutter/material.dart';

import '../utils/strings.dart';
class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  @override
  Widget build(BuildContext context) {
    return
  Stack(
    children: [
      Positioned(
        top: getHeight(context)*0.02,
          left: getWidth(context)*0.05,
          child:
      Image.asset("assets/Group2.png",height: 350,width: 340,)),
      Positioned(bottom: 55,left: 30,right: 30,
          child:
          Column(
            children:  const [
              Padding(
                  padding:
                  EdgeInsets.only(left: 15, right: 15, top: 15)),
              Text(
                CommonString.easilyAddEventToYour,
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,fontFamily: "Raleway",
                ),
              ),
              Text(CommonString.calender,
                  style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,fontFamily: "Raleway")),

            ],
          ))
    ],
  );

  }
}
