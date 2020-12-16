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
    String url = baseIP + '/api/hackathon/get';
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
    return Stack(
      children: [
        FlutterLogin(
            title: 'Hackathon',
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
            messages: LoginMessages(
              usernameHint: 'Username',
              passwordHint: 'Password',
            )),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: DraggableScrollableSheet(
            builder: (context, controller) {
              return Container(
                child: ListView.builder(
                    itemCount: 1,
                    controller: controller,
                    itemBuilder: (BuildContext context, index) {
                      return Column(
                        children: [
                          Card(
                            clipBehavior: Clip.antiAlias,
                            child: Column(children: [
                              ListTile(
                                leading: Icon(Icons.arrow_drop_down_circle),
                                title: const Text(
                                    'aXess prepares us for Open Banking'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  'Learn how we are investing in our capabilities and community to build our Open Banking future.',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.6)),
                                ),
                              ),
                            ]),
                          ),
                          Card(
                            clipBehavior: Clip.antiAlias,
                            child: Column(children: [
                              ListTile(
                                leading: Icon(Icons.arrow_drop_down_circle),
                                title: const Text(
                                    'Imagine what we could do together'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  "Let's build the future of banking together to address our client needs across Asia, Africa, and the Middle East.",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.6)),
                                ),
                              ),
                            ]),
                          ),
                        ],
                      );
                    }),
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              );
            },
            initialChildSize: 0.2,
            minChildSize: 0.2,
          ),
        ),
      ],
    );
  }
}
