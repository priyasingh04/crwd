import 'dart:convert';

import 'package:crwd/api/api_call.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../api/api_category_model.dart';
import '../utils/colors.dart';
import '../utils/common_method.dart';
import '../utils/strings.dart';

class BasicInfoThree extends StatefulWidget {
  const BasicInfoThree({Key? key}) : super(key: key);

  @override
  State<BasicInfoThree> createState() => _BasicInfoThreeState();
}

class _BasicInfoThreeState extends State<BasicInfoThree> {
  List<CategoryDataModel> _list = [];

  @override
  void initState() {
    super.initState();
       getEventCategory();
  }

  String name = "";
  String color = "";
  String icon = "";
  String id = "";

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: getHeight(context) * 0.3,
        width: getWidth(context),
        child: Image.asset(
          "assets/toolbar_bg.png",
          fit: BoxFit.cover,
        ),
      ),
      Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            toolbarHeight: 90,
            centerTitle: true,
            leading: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Icon(
                Icons.arrow_back,
                color: MyColor.white,
                size: 30,
              ),
            ),
            title: const Text(CommonString.basicInfo,
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
                    top: 20,
                    right: 20,
                    left: 20,
                  ),
                  child: Column(children: [
                    Expanded(
                        child: GridView.builder(
                            itemCount: _list.length,
                            primary: false,
                            padding: const EdgeInsets.all(10),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    mainAxisSpacing: 15,
                                    crossAxisSpacing: 15),
                            itemBuilder: (context, index) {
                              return Container(
                                height: 140,
                                width: 140,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Image(
                                      image: NetworkImage(mBaseMedia +
                                          _list[index].icon.toString()),
                                    ),
                                    SizedBox(
                                      height: 32,
                                    ),
                                    InkWell(
                                        onTap: () {},
                                        child: Container(
                                            height: 38,
                                            width: 120,
                                            decoration: const BoxDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  MyColor.orange,
                                                  MyColor.yellow,
                                                ],
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                            ),
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                               _list[index].name.toString(),
                                                style: TextStyle(
                                                  color: MyColor.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: "Raleway",
                                                ),
                                              ),
                                            ))),
                                  ],
                                ),
                              );
                            })),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                        padding: EdgeInsets.only(bottom: 50),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
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
                                  fontFamily: "Raleway"),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                    Padding(
                        padding: EdgeInsets.only(bottom: 30),
                        child: Text(
                          CommonString.step3,
                          style: TextStyle(
                              color: MyColor.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Raleway"),
                        )),
                  ]))))
    ]);
  }

  getEventCategory() async {
    var jsonResponse = null;
    final SharedPreferences pref = await SharedPreferences.getInstance();
    print(
      pref.getString("userid").toString(),
    );
    var response =
        await apiEventCategory(pref.getString("userid").toString(), context);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(response.message.toString()),
    ));
    print(response.message.toString());

    if (response.status == 200) {
      setState(() {
        _list = response.data!;
        print("GET_EVENT $_list!");
      });
    }
  }
}
