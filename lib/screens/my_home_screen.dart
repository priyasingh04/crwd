import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/common_method.dart';
import '../utils/strings.dart';
class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return
        Container(
          color: MyColor.white,
          height: double.infinity ,
    width: double.infinity,
    child:Stack(children: [
      Container(
        height: getHeight(context)*0.3,
      width: double.infinity,
      child: Image.asset(
        "assets/halfcircular.png",
        fit: BoxFit.cover,
      ),
    ),
      Scaffold(
        resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 90,
        centerTitle: true,

        title: const Text(CommonString.basicInfo,
            style: TextStyle(
              color: MyColor.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: "Raleway",
            )),
      ),
        body: Stack(
          children: [
       Padding(padding: EdgeInsets.only(left: 30,right: 30,top: 30,bottom: 70),
                child: Container(
                  height: getHeight(context)*0.7,
                  width: getWidth(context)*0.9,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    clipBehavior:  Clip.antiAliasWithSaveLayer,
                    child: Image.asset("assets/club.png",fit: BoxFit.cover,),
                  ),

                )),

           ]
        ),
      )
    ],)

   );
  }
}
