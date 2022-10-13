import 'package:crwd/screens/info_2_screen.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/common_method.dart';
import '../utils/strings.dart';
import 'join_now_screen.dart';
class BasicInformation extends StatefulWidget {
  const BasicInformation({Key? key}) : super(key: key);

  @override
  State<BasicInformation> createState() => _BasicInformationState();
}

class _BasicInformationState extends State<BasicInformation> {
  TextEditingController nameController = TextEditingController();
  TextEditingController birthController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController idController = TextEditingController();

  FocusNode myFocusNode = FocusNode();

  var items = [
   'male',
    'Female'
  ] ;


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
    child: Padding(
    padding: const EdgeInsets.only(
    top: 30,
    right: 30,
    left: 30,
    ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
          children: [
          TextField(
          controller: nameController,
          decoration: InputDecoration(
            labelText: CommonString.fullName,
            labelStyle: TextStyle(color: myFocusNode.hasFocus ? MyColor.black : MyColor.greyDark,fontSize: 16,fontWeight: FontWeight.w500,fontFamily: "Raleway"),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: MyColor.grey),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: MyColor.darkOrange),),
            //icon at head of input
          )),
            const SizedBox(height: 10,),
            TextField(
                controller: birthController,
                decoration:  InputDecoration(
                  labelText: CommonString.dateOfBirth,
                  labelStyle: TextStyle(color: myFocusNode.hasFocus ? MyColor.black : MyColor.greyDark,fontSize: 16,fontWeight: FontWeight.w500,fontFamily: "Raleway"),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: MyColor.grey),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: MyColor.darkOrange),),
                  //icon at head of input
                )),
            const SizedBox(height: 10,),
            TextField(
                controller: genderController,
                decoration: InputDecoration(
                  suffixIcon:  PopupMenuButton<String>(
                    icon: const Icon(Icons.arrow_drop_down,color: MyColor.greyDark,),
                    onSelected: (String value) {
                      genderController.text = value;
                    },
                    itemBuilder: (BuildContext context) {
                      return items
                          .map<PopupMenuItem<String>>((String value) {
                        return PopupMenuItem(
                            value: value,
                            child:  Text(value));
                      }).toList();
                    },
                  ),
                  labelText: CommonString.gender,
                  labelStyle: TextStyle(color: myFocusNode.hasFocus ? MyColor.black : MyColor.greyDark,fontSize: 16,fontWeight: FontWeight.w500,fontFamily: "Raleway"),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: MyColor.grey),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: MyColor.darkOrange),),
                  //icon at head of input
                )),
            const SizedBox(height: 10,),
            TextField(
                controller: idController,
                focusNode: myFocusNode,
                decoration:  InputDecoration(
                  labelText: CommonString.governmentId,
                  labelStyle: TextStyle(color: myFocusNode.hasFocus ? MyColor.black : MyColor.greyDark,fontSize: 16,fontWeight: FontWeight.w500,fontFamily: "Raleway"),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: MyColor.grey),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: MyColor.darkOrange),),
                  //icon at head of input
                )),
            const SizedBox(height: 10,),
            TextField(
                controller: bioController,
                decoration:  InputDecoration(
                  labelText: CommonString.bio,
                  labelStyle: TextStyle(color: myFocusNode.hasFocus ? MyColor.black : MyColor.greyDark,fontSize: 16,fontWeight: FontWeight.w500,fontFamily: "Raleway"),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: MyColor.grey),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: MyColor.darkOrange),),
                  //icon at head of input
                )),
            const SizedBox(height: 80,),
            GestureDetector(
              onTap: () {
                if (nameController.text.toString().isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(CommonString.pleaseEnterPhoneNumber),
                      ));}
                else if(birthController.text.toString().isEmpty){
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(CommonString.pleaseEnterDateOfBirth),
                      ));
                }  else if(genderController.text.toString().isEmpty){
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(CommonString.pleaseEnterGender),
                      ));
                } else if(idController.text.toString().isEmpty){
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(CommonString.pleaseEnterGovernmentId),
                      ));
                }
                else if(bioController.text.toString().isEmpty){
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(CommonString.pleaseEnterBio),
                      ));
                }
                else{
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                      const Info()));
                }
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
                      fontFamily: "Raleway"
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 100,),
          const Text(CommonString.step,style: TextStyle(color: MyColor.black,fontSize: 16,fontWeight: FontWeight.w500,fontFamily: "Raleway"),)])),
    ))]);
  }
}
