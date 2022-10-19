import 'package:crwd/screens/info_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../api/api_call.dart';
import '../api/api_model.dart';
import '../screens/info_2_screen.dart';
import '../screens/my_home_screen.dart';

GoogleSignIn _googleSignIn = GoogleSignIn();

void googleSignInProcess(BuildContext context) async {
  if (await _googleSignIn.isSignedIn()) {
    handleSignOut();
  }

  GoogleSignInAccount? googleUser;
  GoogleSignInAuthentication googleSignInAuthentication;
  try {
    googleUser = (await _googleSignIn.signIn());
    if (googleUser != null) {
      googleSignInAuthentication = await googleUser.authentication;
      print(googleSignInAuthentication.accessToken);
    }
  } catch (error) {
    print(error);
  }

  if (await _googleSignIn.isSignedIn()) {
    print(googleUser?.email);
    print(googleUser?.displayName);
    print(googleUser?.photoUrl);
    print(googleUser?.id);
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Sucess:${googleUser?.email}" ?? "")));
    loginGoogleApi(context);
  }
}

Future<void> handleSignOut() => _googleSignIn.disconnect();

loginGoogleApi(BuildContext context) async {
  var response = await apiLoginGoogle(context, '112373434782800182798');

  print(response!.status.toString());
   if (response.status == 200) {
     final SharedPreferences pref = await SharedPreferences.getInstance();
     pref.setString("fullName",response.data!.name.toString(),);
     pref.setString("userid",response.data!.id.toString(),);
     pref.setString("isLogin","1");
     pref.setString("sessionid",response.data!.sessionId.toString(),);
     pref.setString("dob",response.data!.dob.toString(),);
     pref.setString("gender", response.data!.gender.toString(),);
     pref.setString("governmentId", response.data!.governmentId.toString(),);
     pref.setString("bio", response.data!.biography.toString(),);
     pref.setString("images", response.data!.images.toString(),);
   if (response.data != null) {
     if (response.data!.name == null ||
          response.data!.dob == null ||
          response.data!.gender == null ||
          response.data!.governmentId == null ||
          response.data!.biography == null) {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => const BasicInformation()));
      }else if (response.data!.name!.isEmpty ||
          response.data!.dob!.isEmpty ||
          response.data!.gender!.isEmpty ||
          response.data!.governmentId!.isEmpty ||
          response.data!.biography!.isEmpty) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const BasicInformation()));
      }
     else if(response.data!.images==null || response.data!.images!.isEmpty){
       Navigator.of(context).pushReplacement(MaterialPageRoute(
           builder: (BuildContext context) => const Info()));
     }
      else {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const MyHome()));
      }
    }
  }
}