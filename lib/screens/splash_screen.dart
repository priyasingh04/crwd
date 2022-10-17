import 'dart:async';

import 'package:crwd/screens/first_screen.dart';
import 'package:crwd/screens/home_screen.dart';
import 'package:crwd/utils/common_method.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'my_home_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

Future<SharedPreferences> _prefs=SharedPreferences.getInstance();

class _SplashScreenState extends State<SplashScreen> {
  var isLoading ;





  @override
  void initState() {
    super.initState();
    /*if(isLoading= ){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHome()));
    }else {
      () {*/
      Timer(const Duration(seconds: 5),
              () =>
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder:
                      (context) => const HomeScreen()
                  )
              )
      );
    }



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30,right: 30),
      height: getHeight(context),
      width: getWidth(context),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/Background.png"),
            fit: BoxFit.cover),
      ),
      child: Image.asset("assets/logo.png",height:74 ,width: 250, alignment: Alignment.center,),
      );
  }
}
