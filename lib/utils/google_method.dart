import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../api/api_call.dart';
import '../screens/my_home_screen.dart';


GoogleSignIn _googleSignIn =GoogleSignIn();
void googleSignInProcess(BuildContext context)async{
  if(await _googleSignIn.isSignedIn()){
    handleSignOut();
  }

  GoogleSignInAccount? googleUser;
  GoogleSignInAuthentication googleSignInAuthentication;
  try {
    googleUser = (await _googleSignIn.signIn());
    if (googleUser!= null) {
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
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Sucess:${googleUser?.email}" ?? "")));
    loginGoogleApi(context);
  }
}
Future<void> handleSignOut() => _googleSignIn.disconnect();

loginGoogleApi(BuildContext context) async {
  var response = await apiLoginGoogle(context,'112373434782800182798');
  print(response!.status.toString());
  if (response.status == "1") {

    Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context) => const MyHome()));
  }
}