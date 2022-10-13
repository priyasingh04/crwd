import 'package:crwd/utils/common_method.dart';
import 'package:crwd/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(child:
      Stack(

        children: [

Positioned(
  top: getHeight(context)*0.03,
    child:
          Image.asset("assets/Group3.png",height: 305,width: 310,)),

    Column(
    children:   [
    Padding(
    padding:
    EdgeInsets.only(left: getWidth(context)*0.8, top: getHeight(context)*0.54,)),
    const Text(
    CommonString.findAndBuyYourFavourite,
    style: TextStyle(
    color: Color(0xFF000000),
    fontSize: 18,
    fontWeight: FontWeight.w700,fontFamily: "Raleway",
    ),
    ),
    const Text(CommonString.eventTicket,
    style: TextStyle(
    color: Color(0xFF000000),
    fontSize: 18,
    fontWeight: FontWeight.w700,fontFamily: "Raleway")),
    ],
    )
     ]));
  }
}
