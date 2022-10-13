import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/common_method.dart';
import '../utils/strings.dart';
class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
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
    child:  Padding(
    padding: const EdgeInsets.only(
    top: 20,
    right: 20,
    left: 20,),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
      Expanded(child:
     GridView.count(
         crossAxisCount: 3,
         crossAxisSpacing: 4.0,
         mainAxisSpacing: 8.0,
         primary: false,
       padding: const EdgeInsets.all(10),
         children: <Widget>[
    Stack(
 children: [
   Image.asset("assets/man_image1.png",height: 140,width: 140,),
   Positioned(
     right: 6.5,
      top: 0,
       child:  Image.asset("assets/close.png",height: 30,width: 30,),)
 ],
    ),
      Stack(
        children: [
          Image.asset("assets/man_image2.png",height: 140,width: 140,),
          Positioned(
            right: 6.5,
            top: 0,
            child:  Image.asset("assets/close.png",height: 30,width: 30,),)
        ],
      ),
      Stack(
        children: [
          Image.asset("assets/man_image3.png",height: 140,width: 140,),
          Positioned(
            right: 6.5,
            top: 0,
            child:  Image.asset("assets/close.png",height: 30,width: 30,),)
        ],
      ),
           Stack(
             children: [
               Image.asset("assets/man_image4.png",height: 140,width: 140,),
               Positioned(
                 right: 6.5,
                 top: 0,
                 child:  Image.asset("assets/close.png",height: 30,width: 30,),)
             ],
           ),
           Stack(
             children: [
               Image.asset("assets/man_image1.png",height: 140,width: 140,),
               Positioned(
                 right: 6.5,
                 top: 0,
                 child:  Image.asset("assets/close.png",height: 30,width: 30,),)
             ],
           ),

         Container(
           margin: EdgeInsets.only(top: 10),
           height: 140,width: 140,
           child: Column(
             children: [
               Align(alignment:Alignment.center,
               child:
               Image.asset("assets/plus.png",height: 50,width: 50,),),
               const Text(CommonString.addMore,style: TextStyle(
                 color: MyColor.greyDark,
                 fontSize: 16,
                 fontWeight: FontWeight.w500,
                 fontFamily: "Raleway",))

         ],),)] )),
/*const Padding(padding: EdgeInsets.only(bottom: 130),*/
     const Text(CommonString.pleaseAddAtLeast,style: TextStyle(
        color: MyColor.greyDark,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: "Raleway",
      ),
        textAlign: TextAlign.center,),
/*    const Padding(padding: EdgeInsets.only(top: 120),
    child:*/
    const Text(CommonString.withNobodyElsePicture,style: TextStyle(
        color: MyColor.greyDark,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: "Raleway",
      ),
        textAlign: TextAlign.center,),
    ],),)))]);
  }
}
