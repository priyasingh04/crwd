import 'dart:convert';

import 'package:crwd/screens/info_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/my_home_screen.dart';
import 'api_model.dart';
import 'package:http/http.dart' as http;

Future<LoginModel> apiLoginPhone(
  String phoneNumber,
  BuildContext context,
) async {
  var request = http.MultipartRequest(
      'POST', Uri.parse('http://50.17.68.62/crwd/api/login_with_phone'));
  request.fields.addAll({
    'phone_number': phoneNumber,
    'device_type': 'Android',
    'device_token': '1',
    'referral_code': 'run',
  });

  http.StreamedResponse response = await request.send();
  var jsonResponse = jsonDecode(await response.stream.bytesToString());
  return LoginModel.fromJson(jsonResponse);
}

Future<LoginModel?> apiLoginGoogle(
  BuildContext context,
  String socialId,
) async {
  String username = 'crwd';
  String password = 'Q1JXRCBjcmVhdGVkIGJ5IGNoYW5kYW4';
  String basicAuth =
      'Basic ' + base64Encode(utf8.encode('$username:$password'));
  var jsonResponse = null;
  var response = await http.post(
    Uri.parse('http://50.17.68.62/crwd/api/social_login'),
    headers: {'authorization': basicAuth},
    body: {
      'social_id': '112373434782800182798',
      'name': 'Quality Analyst',
      'email': 'analystq16@gmail.com',
      'device_type': 'Android',
      'device_token': '1',
      'social_type': 'Google',
      'referral_code': 'run',
    },
  );

  print(response.body);
  jsonResponse = json.decode(response.body);
  var loginModel = LoginModel.fromJson(jsonResponse);
  if (response.statusCode == 200) {
   /* if (loginModel.data != null) {
      if (loginModel.data!.name == null ||
          loginModel.data!.dob == null ||
          loginModel.data!.gender == null ||
          loginModel.data!.governmentId == null ||
          loginModel.data!.biography == null) {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => const BasicInformation()));
      } else {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => const MyHome()));
      }
    }*/

    return loginModel;
  } else if (response.statusCode == 401) {
  } else {
    throw Exception("Failed to load the work experience!");
  }
}

// login with phone this api hit button
/* loginPhoneApi() async {
    var response = await apiLoginPhone(phoneController.text.toString(),
        context);
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(response.message.toString()),
        ));
    if (response.status == "1") {

      Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => const Verify()));
    }
  }*/
