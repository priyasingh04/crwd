import 'package:crwd/api/api_call.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/colors.dart';
import '../utils/common_method.dart';
import '../utils/strings.dart';
import 'dart:io';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  List<File> images = [];

  Future _imagePick(ImageSource source) async {
    var image = await ImagePicker().pickImage(source: source);
    if (image != null) {
      debugPrint("image path: ${image.path}");
      setState(() {
        images.add(File(image!.path));
      });
    }
  }

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
                  child: Column( children: [
                    Expanded(
                      child: GridView.builder(
                        itemCount: images.length,
                        primary: false,
                        padding: const EdgeInsets.all(10),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                            mainAxisSpacing: 5,),
                        itemBuilder: (context, index) {
                          return
                          Stack(children:[
                            Container(
                            height: 140,
                            width: 140,
                            child: Image.file(
                              File(
                                images[index]!.path,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                            Positioned(
                            top: -1,
                                right: -1,

                                child: InkWell(onTap:(){
                                  setState(() {
                                   images.removeAt(index);
                                  });
                                },child:Image.asset("assets/close.png")))
                          ]
                          );
                        },
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(bottom: 150),child:
                    GestureDetector(
                        onTap: () {
                          _showPicker(context, 1);
                        },
                        child: Container(
                            margin: EdgeInsets.only(top: 10),
                            height: 140,
                            width: 140,
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    "assets/plus.png",
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                const Text(CommonString.addMore,
                                    style: TextStyle(
                                      color: MyColor.greyDark,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Raleway",
                                    ))
                              ],
                            )))),
 const Padding(padding: EdgeInsets.only(bottom: 150),
                   child: Text(
                      CommonString.pleaseAddAtLeast,
                      style: TextStyle(
                        color: MyColor.greyDark,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Raleway",
                      ),
                      textAlign: TextAlign.center,
                    ),),


    const Padding(padding: EdgeInsets.only(bottom: 120),
    child:
                    Text(
                      CommonString.withNobodyElsePicture,
                      style: TextStyle(
                        color: MyColor.greyDark,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Raleway",
                      ),
                      textAlign: TextAlign.center,
                    ),),
                    GestureDetector(
                      onTap: (){},
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
                          borderRadius: BorderRadius.all(Radius.circular(30)),
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
                      ),),

                  ]))))
    ]);
  }

  _showPicker(context, int index) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: Wrap(
                children: <Widget>[
                  ListTile(
                      leading: const Icon(Icons.photo_library),
                      title: const Text('Photo Library'),
                      onTap: () async {
                        Navigator.of(context).pop();
                        _imagePick(ImageSource.gallery);
                      }),
                  ListTile(
                    leading: const Icon(Icons.photo_camera),
                    title: const Text('Camera'),
                    onTap: () {
                      Navigator.of(context).pop();
                      _imagePick(ImageSource.camera);
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }


     }


