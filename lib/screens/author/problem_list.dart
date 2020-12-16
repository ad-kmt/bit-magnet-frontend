import 'dart:convert';

import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/problem_statement_card.dart';
import 'package:bit_magnet/components/problem_statement_detailed_card.dart';
import 'package:bit_magnet/config/base.dart';

import 'package:bit_magnet/models/sample_objects.dart';
import 'package:bit_magnet/screens/author/create_problem.dart';
import 'package:bit_magnet/screens/author/problem_detail.dart';
import 'package:bit_magnet/screens/author/side_bar.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';
import 'package:bit_magnet/models/problem_statement.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class AProblemList extends StatefulWidget {
  const AProblemList({
    Key key,
  }) : super(key: key);

  Future<void> getUserData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    var token = preferences.getString("token");
    var psid = preferences.getString("psid");

    print("===============");
    print(token);
    print(psid);
  }

  _AProblemListState createState() => _AProblemListState();
}

class _AProblemListState extends State<AProblemList> {
  List<IProblemStatement> problemList = [];

  @override
  Future<void> initState() {
    super.initState();
    getProblemList();
  }

  void getProblemList() async {
    //GET TOKEN FROM SHARED PREF
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var token = preferences.getString("token");
    var psid = preferences.getString("psid");

    //TOKEN STRING
    String jwt = 'Bearer ' + token;
    //URL
    var url = baseIP + "/api/problem/current/get";
    //API CALL
    http.Response response = await http.get(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': jwt,
      },
    );

    //JSON DECODE
    var responseData = jsonDecode(response.body);

    //WHAT TO INITIALIZE
    List<IProblemStatement> problemListData = List();

    for (int i = 0; i < responseData["data"].length; i++) {
      var problemData = responseData["data"][i];
      int id = 50 + i;
      String title = problemData["title"];
      String description = problemData["description"];
      String department = problemData["group"];
      List<String> technologies = List<String>();
      for (var skill in problemData["skills"]) {
        technologies.add(skill);
      }

      IProblemStatement problemStatement = IProblemStatement.fromBackend(
          "00" + id.toString(), title, description, department, technologies);

      print(problemStatement);

      problemListData.add(problemStatement);
    }

    //INITIALIZE.
    setState(() {
      problemList = problemListData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AxessAppBar(),
      backgroundColor: Palette.lightGreyBackground,
      drawer: ASideBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 76),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Problem Statements: ",
                style: kBlackSubTitle,
              ),
              for (var problem in problemList)
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AProblemDetail(problem)),
                    );
                  },
                  child: ProblemStatementDetailedCard(
                      problem, AProblemDetail(problem)),
                )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print('Clicked');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreateProblem()),
          );
        },
        label: Text('Create'),
        icon: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}
