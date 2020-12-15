import 'dart:convert';

import 'package:bit_magnet/screens/author/problem_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

const users = const {
  '1625185': 'password',
};

class LoginScreen extends StatelessWidget {
  Duration get loginTime => Duration(milliseconds: 2250);

  Future<String> _authUser(LoginData data) async {
    var psid = data.name;
    var password = data.password;

    //API CALL
    http.Response response = await http.post(
      "http://10.0.2.2:3000/api/author/login",
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "psid": psid,
        "password": password,
      }),
    );

    var responseData = jsonDecode(response.body);
    if (responseData["status"] == "success") {
      SharedPreferences preferences = await SharedPreferences.getInstance();

      preferences.setString("token", responseData["token"]);
      preferences.setString("psid", responseData["user"]["psid"]);

      return null;
    } else {
      return responseData["message"];
    }
  }

  Future<String> _recoverPassword(String name) {
    print('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'Username not exists';
      }
      return null;
    });
  }

  FormFieldValidator<String> psidValidator = (value) {
    if (value.isEmpty || value.length != 7) {
      return 'Invalid psid!';
    }
    return null;
  };

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'Login',
      logo: 'images/logo.png',
      onLogin: _authUser,
      onSignup: _authUser,
      emailValidator: psidValidator,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => AProblemList(),
        ));
      },
      onRecoverPassword: _recoverPassword,
    );
  }
}
