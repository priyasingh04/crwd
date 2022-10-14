import 'package:crwd/screens/otp_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/common_method.dart';
import '../utils/google_method.dart';
import '../utils/send_otp_method.dart';
import '../utils/strings.dart';


FirebaseAuth _auth = FirebaseAuth.instance;

class Sign extends StatefulWidget {
  const Sign({Key? key}) : super(key: key);

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  TextEditingController phoneController = TextEditingController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    Firebase.initializeApp();

  }
  @override
  dispose() {
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        height: getHeight(context) * 0.3,
        width: getWidth(context),
        child: Image.asset(
          "assets/toolbar_bg.png",
          fit: BoxFit.cover,
        ),
      ),
      Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
              toolbarHeight: 90,
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              centerTitle: true,
              title: Column(children: const [
                SizedBox(
                  height: 20,
                ),
                Text(CommonString.signIn,
                    style: TextStyle(
                      color: MyColor.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Raleway",
                    )),
                SizedBox(
                  height: 10,
                ),
                Text(CommonString.signInToContinue,
                    style: TextStyle(
                      color: MyColor.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Raleway",
                    )),
              ])),
          body: Container(
              height: double.infinity,
              width: double.infinity,
              padding: const EdgeInsets.only(top: 10),
              margin: const EdgeInsets.only(top: 100),
              decoration: const BoxDecoration(
                color: MyColor.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  right: 20,
                  left: 20,
                ),
                child: Column(
                  children: [
                    TextField(
                        controller: phoneController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.phone,
                            color: MyColor.black,
                          ),
                          labelText: CommonString.phoneNumber,
                          labelStyle: TextStyle(color: MyColor.black),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: MyColor.darkOrange, width: 2),
                          ),
                          //icon at head of input
                        )),
                    SizedBox(
                      height: getHeight(context) * 0.1,
                    ),
                    GestureDetector(
                      onTap: () {
    if (phoneController.text.toString().isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
    content: Text(CommonString.pleaseEnterName                    ),
    ));}
                        else{
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => Verify()
      ));
                          final mobile = phoneController.text.trim();
           sendOtp(mobile,context);

     // api set
 /*   setState(() {
    isLoading = true;
    });
    loginPhoneApi();
    setState(() {
    isLoading = true;
    });*/

        }
                      },
                      child: Container(
                        height: getHeight(context) * 0.07,
                        width: getWidth(context) * 0.80,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              MyColor.orange,
                              MyColor.yellow,
                            ],
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          CommonString.sentOTP,
                          style: TextStyle(
                            color: MyColor.white,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getHeight(context) * 0.1,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        GestureDetector(
                          onTap: (){
                            googleSignInProcess(context);
                          },
                            child:
                        Image.asset(
                          "assets/google.png",
                          height: 70,
                          width: 70,
                        )),
                        const SizedBox(width: 50,),
                        Image.asset(
                          "assets/apple.png",
                          height: 70,
                          width: 70,
                        ),
                      ],
                    )
                  ],
                ),
              )))
    ]);
  }
 /* loginGoogleApi() async {
    var response = await apiLoginGoogle('112373434782800182798');
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(response.message.toString()),
        ));
    if (response!.status == "1") {

      Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => const MyHome()));
    }
  }*/
}
