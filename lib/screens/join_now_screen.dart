import 'package:crwd/screens/language_screen.dart';
import 'package:crwd/screens/signIn_screen.dart';
import 'package:crwd/utils/strings.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

import '../utils/common_method.dart';

class JoinNow extends StatefulWidget {
  const JoinNow({Key? key}) : super(key: key);

  @override
  State<JoinNow> createState() => _JoinNowState();
}

class _JoinNowState extends State<JoinNow> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
              height: getHeight(context),
              width: getWidth(context),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFFF68E49), Color(0xFFEF5162)]),
              ),
              child: Column(
                children: [
                  Image.asset(
                    "assets/welcome.png",
                    height: getHeight(context)*0.54,
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                  Padding(padding: EdgeInsets.only(left: getWidth(context)*0.05,top: getHeight(context)*0.05),
                 child: Row(
                      children:const [
                        Text(CommonString.welcomeTo,   style: TextStyle(
                    color: MyColor.white,
                    fontSize: 24,
                    fontWeight:FontWeight.w600 ,fontFamily: "Raleway",
                  ),),
                  Text(CommonString.crwd,style: TextStyle(
                    color: MyColor.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,fontFamily: "Raleway",
                  ),),
                  ])
                  ),
              Padding(padding: EdgeInsets.only(left: getWidth(context)*0.05,right: getWidth(context)*0.09,top: getHeight(context)*0.02),
              child: const Text(CommonString.itIsALongEstablished,style: TextStyle(
                color: MyColor.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,fontFamily: "Raleway",
              ),),),
                  SizedBox(height: getHeight(context)*0.05,),

                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const Sign()));
                    },
                    child:
                    Container(
                      height: getHeight(context) * 0.07,
                      width: getWidth(context) * 0.80,
                      decoration: const BoxDecoration(
                      color: MyColor.white,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        CommonString.joinNow,
                        style: TextStyle(
                          color:MyColor.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                            fontFamily: "Raleway"
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: getHeight(context)*0.07,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                    const Text(
                      CommonString.alreadyHaveAnAccount,
                        style: TextStyle(
                          color: MyColor.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,fontFamily: "Raleway",),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const Sign()));
                      },
                      child: const Text(
                        CommonString.signIn,
                        style: TextStyle(
                          color: MyColor.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,fontFamily: "Raleway",
                        ),
                      ),
                    )
                  ]),
                  SizedBox(height: getHeight(context)*0.01,),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const Language()));
                },
                 child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                         Image.asset("assets/vector.png",height: getHeight(context)*0.05,width: getWidth(context)*0.05,),
                      SizedBox(width:getWidth(context)*0.01,),
                      const Text(CommonString.eN,  style: TextStyle(
                        color: MyColor.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,fontFamily: "Raleway",
                      ),)
                    ],
                  )
              )

                ],
              )))
    ]);
  }
}
