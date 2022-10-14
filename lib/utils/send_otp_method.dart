import 'package:crwd/screens/my_home_screen.dart';
import 'package:crwd/screens/otp_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


FirebaseAuth _auth = FirebaseAuth.instance;
Future sendOtp(String mobile, BuildContext context) async{
  _auth.verifyPhoneNumber(
      phoneNumber: mobile,
      timeout: Duration(seconds: 60),
      verificationCompleted: (PhoneAuthCredential credential) async {
        // ANDROID ONLY!

        // Sign the user in (or link) with the auto-generated credential
        await _auth.signInWithCredential(credential).then((value){
          Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) => Verify()
          ));
        }).catchError((e){
          print(e);
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == 'invalid-phone-number') {
          print('The provided phone number is not valid.');
        }

        // Handle other errors
      },
      codeSent:  (String verificationId, int? resendToken,) async {
        // Update the UI - wait for the user to enter the SMS code
        String smsCode = 'xxx';

        // Create a PhoneAuthCredential with the code
        PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: verificationId, smsCode: smsCode);

        // Sign the user in (or link) with the credential
        await _auth.signInWithCredential(credential);
      },
      codeAutoRetrievalTimeout: (String verificationId){
        verificationId = verificationId;
        print(verificationId);
        print("Timout");
      },

  );


}
/*

Future confirmation()async{
  ConfirmationResult confirmationResult = await _auth.signInWithPhoneNumber('+44 7123 123 456', RecaptchaVerifier(
    container: 'recaptcha',
    size: RecaptchaVerifierSize.compact,
    theme: RecaptchaVerifierTheme.dark,
  ));
}

void RecaptchaVerifier(
  onSuccess: () => print('reCAPTCHA Completed!'),
onError: (FirebaseAuthException error) => print(error),
onExpired: () => print('reCAPTCHA Expired!'),
);


*/
