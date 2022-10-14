import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../utils/colors.dart';
import '../utils/common_method.dart';
import '../utils/strings.dart';
import 'info_screen.dart';
import 'my_home_screen.dart';
class Verify extends StatefulWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  OtpFieldController otpController = OtpFieldController();
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
        Container(
        height: getHeight(context) * 0.3,
    width: getWidth(context),
    child: Image.asset("assets/toolbar_bg.png",fit: BoxFit.cover,),
    ),
    Scaffold(
        resizeToAvoidBottomInset: false,
    backgroundColor: Colors.transparent,
    appBar: AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0.0,
      toolbarHeight: 90,
    centerTitle: true,

    leading:
    InkWell(
    onTap: (){
    Navigator.of(context).pop();
    },child: const Icon(
    Icons.arrow_back,
    color: MyColor.white,
    size: 30,
    ),),
    title: const Text(CommonString.verifyOTP,
    style: TextStyle(
    color: MyColor.white,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    fontFamily: "Raleway",
    )),
    ),
    body: Container(
    height: double.infinity,
    width: double.infinity,
    padding: const EdgeInsets.only(top: 10),
    margin: const EdgeInsets.only(top: 20),
    decoration: const BoxDecoration(
    color: MyColor.white,
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(30.0),
    topRight: Radius.circular(30.0),
    ),
    ),
    child: Padding(
    padding: const EdgeInsets.only(
    top: 40,
    right: 30,
    left: 30,
    ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children:   [
          Image.asset(
            "assets/lock.png",
            height: 150,
            width: 150,
          ),
    const SizedBox(height: 20,),
    const Text(
        CommonString.pleaseEnterYourDigitCode,
        style: TextStyle(
            color:MyColor.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
            fontFamily: "Raleway"
        ),
        textAlign: TextAlign.center,
      ),
         const    Text(
              CommonString.verifyYourPhoneNumber,
              style: TextStyle(
                  color:MyColor.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Raleway"
              ),
              textAlign: TextAlign.center,
            ),
          SizedBox(height: 30,),
          OTPTextField(
            controller: otpController,
            length: 4,
            width: getWidth(context),
            fieldWidth: 45,
            style: const TextStyle(
                fontSize: 16,
              color: MyColor.greyDark
            ),
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldStyle: FieldStyle.underline,
            onCompleted: (pin) {
              print("Completed: " + pin);
            },
          ),
          const SizedBox(height: 40,),
          const Text(
            CommonString.didNtReceiveACode,
            style: TextStyle(
                color:MyColor.greyDark,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: "Raleway"
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10,),
          const Text(
            CommonString.resendCode,
            style: TextStyle(
                color:MyColor.yellow,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: "Raleway"
            ),
            textAlign: TextAlign.center,
          ),
    const SizedBox(height: 40,),
    GestureDetector(
      onTap: (){
        if (otpController.toString().isEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(CommonString.pleaseEnterOTP),
              ));}
        else{
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> BasicInformation()));
          //verify otp
       /*   final otp = otpController.toString();
          final verificationId ='';
          _verifyOTP(otp,verificationId);*/
        }
      },
      child:

    Container(
    height: getHeight(context) * 0.07,
    width: getWidth(context) * 0.80,
    decoration: const BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
    Color(0xFFEF5162),
    Color(0xFFF68E49),
    ],
    ),
    borderRadius:
    BorderRadius.all(Radius.circular(30)),
    ),
    alignment: Alignment.center,
    child: const Text(
    CommonString.Continue,
    style: TextStyle(
    color: Color(0xFFFFFFFF),
    fontSize: 18,
    ),
    textAlign: TextAlign.center,
    ),
    ),
    )
        ],
      ),
    )
     ))]);
  }
  void _verifyOTP(String otp,String verificationId) {
    /// get the `smsCode` from the user
    String smsCode = otp;

    /// when used different phoneNumber other than the current (running) device
    /// we need to use OTP to get `phoneAuthCredential` which is inturn used to signIn/login
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: smsCode);

    const MyHome();
  }
}
