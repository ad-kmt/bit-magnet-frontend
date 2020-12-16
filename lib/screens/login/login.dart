import 'dart:convert';

import 'package:bit_magnet/config/base.dart';
import 'package:bit_magnet/screens/author/home.dart';
import 'package:bit_magnet/screens/author/problem_list.dart';
import 'package:bit_magnet/screens/moderator/home.dart';
import 'package:bit_magnet/screens/participant/hackathon_list.dart';
import 'package:bit_magnet/screens/participant/home.dart';
import 'package:bit_magnet/screens/participant/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

const users = const {
  '1625185': 'password',
};

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key key,
  }) : super(key: key);

  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // int role;
  Duration get loginTime => Duration(milliseconds: 2250);

  void routToDashBoards() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String role = preferences.getString("role");
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) {
        if (role == "AUTHOR") {
          print("author");
          return AHome();
        } else if (role == "PARTICIPANT") {
          return PHome();
        } else if (role == "MODERATOR") {
          return MHome();
        } else {
          return Test();
        }
      },
    ));
  }

  Future<String> _authUser(LoginData data) async {
    var psid = data.name;
    var password = data.password;

    //API CALL
    String url = baseIP + '/api/admin/common/login';
    http.Response response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "psid": psid,
        "password": password,
      }),
    );

    var responseData = jsonDecode(response.body);
    // await setState(() {
    //   role = responseData["role"];
    // });

    if (responseData["status"] == "success") {
      SharedPreferences preferences = await SharedPreferences.getInstance();

      preferences.setString("token", responseData["token"]);
      preferences.setString("role", responseData["role"]);
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
        title: 'Hackathon',
        logo: 'images/logo.png',
        onLogin: _authUser,
        onSignup: _authUser,
        emailValidator: psidValidator,
        onSubmitAnimationCompleted: () {
          routToDashBoards();
        },
        onRecoverPassword: _recoverPassword,
        messages: LoginMessages(
          usernameHint: 'Username',
          passwordHint: 'Password',
        ));
  }
}
