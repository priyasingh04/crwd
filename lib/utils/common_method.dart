import 'package:flutter/cupertino.dart';

const mBaseMedia = "http://50.17.68.62/crwd/media/";

getWidth(BuildContext context){
  return MediaQuery.of(context).size.width;

}
getHeight(BuildContext context) {
  return MediaQuery
      .of(context)
      .size
      .height;
}
