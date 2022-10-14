import 'package:crwd/screens/join_now_screen.dart';
import 'package:crwd/screens/second_screen.dart';
import 'package:crwd/screens/third_screen.dart';
import 'package:crwd/utils/colors.dart';
import 'package:crwd/utils/common_method.dart';
import 'package:crwd/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'first_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
            padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFF68E49), Color(0xFFEF5162)]),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: getHeight(context) * 0.5),
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color(0xFFFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFB7B7B7),
                            blurRadius: 4,
                            offset: Offset(0, 0),
                          )
                        ]),
                    padding: const EdgeInsets.only(bottom: 20),
                    height: getHeight(context) * 0.35,
                    width: getWidth(context) * 0.90,
                    child: Column(
                      children: [
                        const Padding(
                            padding:
                                EdgeInsets.only(left: 15, right: 15, top: 75)),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(CommonString.eventCanAlsoBeUsedAtInstruction,
                            style: TextStyle(
                              color: Color(0xFFA8A8A8),
                              fontSize: 14,
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.w500,
                            )),
                        const Text(CommonString.setLevelWhereTheyInterrupts,
                            style: TextStyle(
                              color: Color(0xFFA8A8A8),
                              fontSize: 14,
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.w500,
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        SmoothPageIndicator(
                          controller: controller,
                          count: 3,
                          axisDirection: Axis.horizontal,
                          effect: const WormEffect(
                              spacing: 6.0,
                              radius: 4.0,
                              dotWidth: 6.0,
                              dotHeight: 6.0,
                              paintStyle: PaintingStyle.stroke,
                              strokeWidth: 1.5,
                              dotColor: Color(0xFFF2F2F2),
                              activeDotColor: Color(0xFFEF5162)),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const JoinNow()));
                          },
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
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 30),
                  height: getHeight(context) * 0.70,
                  width: getWidth(context),
                  child: PageView(
                    controller: controller,
                    children: const [
                      FirstScreen(),
                      SecondScreen(),
                      ThirdScreen()
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: getHeight(context) * 0.87,
                      left: getWidth(context) * 0.4),
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                          const JoinNow()));
                    },
     child:const Text(
                    CommonString.skip,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Raleway",
                        fontSize: 14),
                  ),
                ),),
              ],
            )),
      )
    ]);
  }
}
