import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/models/sample_objects.dart';
import 'package:bit_magnet/screens/author/side_bar.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:bit_magnet/config/base.dart';
import 'package:flutter/material.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import 'home.dart';

class CreateProblem extends StatefulWidget {
  const CreateProblem({
    Key key,
  }) : super(key: key);

  _CreateProblemtState createState() => _CreateProblemtState();
}

class _CreateProblemtState extends State<CreateProblem> {
  List<int> skillSelectedValues = [];
  String title;
  String group;
  String benefactorID;
  String description;
  List<String> skills =[];

  final List<DropdownMenuItem> groupList = SampleObjects.sampleGroupList;
  final List<DropdownMenuItem> skillList = SampleObjects.sampleSkillList;

  @override
  Widget build(BuildContext context) {
    var createCallback = ()async {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) {
          return AHome();
        },
      ));
      //API CALL: creating problem statement.
      SharedPreferences preferences = await SharedPreferences.getInstance();
      String jwt = 'Bearer ' + preferences.getString("token");
      var url = baseIP + "/api/problem/current/add";
      http.Response response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': jwt,
        },
        body: json.encode({
          "title": title,
          "group": group,
          "description": description,
          "skills": skills,
        }),
      );
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) {
            return AHome();
        },
      ));
    };

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AxessAppBar(),
      backgroundColor: Palette.lightGreyBackground,
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.fromLTRB(16, 18, 16, 8),
                child: Text(
                  "Create Problem",
                  style: kBlueTitle,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Title",
                      style: customLabel,
                    ),
                  ),
                  TextFormField(
                    // The validator receives the text that the user has entered.
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Enter Title'),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    onChanged: (String value) async {
                      setState(() {
                        title = value;
                      });
                    },
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 15),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Problem Statement Title",
                      style: customHeplerText,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Group",
                      style: customLabel,
                    ),
                  ),
                  SearchableDropdown.single(
                    items: groupList,
                    value: group,
                    hint: "Select a Group",
                    searchHint: "Retail, CCIB ",
                    onChanged: (value) {
                      setState(() {
                        group = value;
                      });
                    },
                    isExpanded: true,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 15),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Group this hackathon is for",
                      style: customHeplerText,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Suggested Technologies",
                      style: customLabel,
                    ),
                  ),
                  SearchableDropdown.multiple(
                    items: skillList,
                    selectedItems: skillSelectedValues,
                    hint: Text("Select skills"),
                    searchHint: "ReactJS, NodeJS",
                    onChanged: (value) {
                      setState(() {
                        skillSelectedValues = value;
                        skills = new List<String>.from(value.map((id) => (skillList[id].value).toString()).toList());
                      });
                    },
                    closeButton: (skillSelectedValues) {
                      return (skillSelectedValues.isNotEmpty
                          ? "Save ${skillSelectedValues.length == 1 ? '"' + skillList[skillSelectedValues.first].value.toString() + '"' : '(' + skillSelectedValues.length.toString() + ')'}"
                          : "Save without selection");
                    },
                    isExpanded: true,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 15),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Group this hackathon is for",
                      style: customHeplerText,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Benefactor",
                      style: customLabel,
                    ),
                  ),
                  TextFormField(
                    // The validator receives the text that the user has entered.
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Benefactor Bank ID'),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    onChanged: (String value) async {
                      setState(() {
                        benefactorID = value;
                      });
                    },
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 15),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Benefactor Bank ID",
                      style: customHeplerText,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Description",
                      style: customLabel,
                    ),
                  ),
                  TextFormField(
                    maxLines: 12,
                    // The validator receives the text that the user has entered.
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Type details of problem statement'),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    onChanged: (String value) async {
                      setState(() {
                        description = value;
                      });
                    },
                  ),
                  CupertinoButton.filled(
                    child: Text('Submit'),
                    onPressed: () {createCallback();},
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
