import 'package:flutter/cupertino.dart';

getWidth(BuildContext context){
  return MediaQuery.of(context).size.width;

}
getHeight(BuildContext context) {
  return MediaQuery
      .of(context)
      .size
      .height;
}
