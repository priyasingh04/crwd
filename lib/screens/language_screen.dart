import 'package:crwd/utils/colors.dart';
import 'package:crwd/utils/strings.dart';
import 'package:flutter/material.dart';

import '../utils/common_method.dart';
import 'first_screen.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {


  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: getHeight(context) * 0.3,
        width: getWidth(context),
       child: Image.asset("assets/toolbar_bg.png",fit: BoxFit.cover,),
      ),
      Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            centerTitle: true,
            leading: InkWell(
              onTap: (){
                Navigator.of(context).pop();
              },
              child:const Icon(
              Icons.arrow_back,
              color: MyColor.white,
              size: 30,

            ),),
            title: const Text(CommonString.selectLanguage,
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
            margin: const EdgeInsets.only(top: 50),
            decoration: const BoxDecoration(
              color: MyColor.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children:<Widget>[
                      ListTile(
                        leading: Image.asset("assets/englishflag.png",height: 20,width: 20,fit: BoxFit.cover,),
                        title: const Text(CommonString.english, style: TextStyle(
                          color: MyColor.greyDark,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Raleway",
                        )),
                        subtitle: const Divider(
                          color: MyColor.grey,
                          thickness:1
                        )
                      ),
                    ListTile(
                          leading: Image.asset("assets/spanishFlag.png",height: 20,width: 20,fit: BoxFit.cover,),
                          title:  const Text(CommonString.spanish, style: TextStyle(
                            color: MyColor.greyDark,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Raleway",
                          )),
                          subtitle: const Divider(
                              color: MyColor.grey,
                              thickness:1
                          )

                      ),
                      ListTile(
                          leading: Image.asset("assets/portugueseFlag.png",height: 20,width: 20,fit: BoxFit.cover,),
                          title:  const Text(CommonString.portuguese, style: TextStyle(
                            color: MyColor.greyDark,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Raleway",
                          )),
                          subtitle: const Divider(
                              color: MyColor.grey,
                              thickness:1
                          )

                      ),
                      ListTile(
                          leading: Image.asset("assets/arabicFlag.png",height: 20,width: 20,fit: BoxFit.cover,),
                          title:  const Text(CommonString.arabic, style: TextStyle(
                            color: MyColor.greyDark,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Raleway",
                          )),
                          subtitle: const Divider(
                              color: MyColor.grey,
                              thickness:1
                          )

                      ),
                      ListTile(
                          leading: Image.asset("assets/frenchFlag.png",height: 20,width: 20,fit: BoxFit.cover,),
                          title:  const Text(CommonString.french, style: TextStyle(
                            color: MyColor.greyDark,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Raleway",
                          )),
                          subtitle: const Divider(
                              color: MyColor.grey,
                              thickness:1
                          )

                      ),
                    ],
                  ),
                ),
               /* SizedBox(height: 5,),*/
Padding(padding: EdgeInsets.only(bottom: 80),
            child:    GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const FirstScreen()));
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
                      CommonString.changeLanguage,
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
            ),
                )
              ],
            ),
          )),
    ]);
  }

}

