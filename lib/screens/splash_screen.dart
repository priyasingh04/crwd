import 'dart:async';


import 'package:crwd/screens/home_screen.dart';
import 'package:crwd/screens/info_2_screen.dart';
import 'package:crwd/utils/common_method.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'info_3_screen.dart';
import 'info_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}



class _SplashScreenState extends State<SplashScreen> {
  var isLoading ;
  Future<SharedPreferences> _prefs=SharedPreferences.getInstance();
  var isLogin="";



  @override
  void initState() {
    getUserDetails();
    super.initState();

      Timer(const Duration(seconds: 5),
              () {

                if(isLogin=="1"){
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder:
                          (context) =>  const BasicInformation()
                      )
                  );

                }else if(isLogin=="2"){
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder:
                          (context) =>  const Info()
                      )
                  );
                }else if(isLogin=="3"){
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder:
                          (context) =>  const BasicInfoThree()
                      )
                  );
                }
                else{
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder:
                          (context) => const HomeScreen()
                      )
                  );
                }
              }

      );
    }

      getUserDetails()async{
    SharedPreferences _data=await _prefs;
    isLogin=_data.getString("isLogin").toString();
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
