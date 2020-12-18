import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/app_bar_admin.dart';
import 'package:bit_magnet/models/sample_objects.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';
import 'package:flutter/cupertino.dart';

import 'home2.dart';

class CreateHackathon extends StatefulWidget {
  const CreateHackathon({
    Key key,
  }) : super(key: key);

  _CreateHackathonState createState() => _CreateHackathonState();
}

class _CreateHackathonState extends State<CreateHackathon> {
  String locationSelectedValue;

  List<int> invitationSelectedValues = [];
  List<int> problemSelectedValues = [];

  final List<DropdownMenuItem> invitationList =
      SampleObjects.sampleInvitationList;
  final List<DropdownMenuItem> locationList = SampleObjects.sampleLocationList;
  final List<DropdownMenuItem> problemList =
      SampleObjects.sampleProblemListModerator;

  @override
  Widget build(BuildContext context) {
    var submitCallback = () {
      //API CALL
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MHome2()),
      );
    };

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: MAppBar(),
      backgroundColor: Palette.lightGreyBackground,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.fromLTRB(16, 18, 16, 8),
              child: Text(
                "Create Hackathon",
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
                    "Topic",
                    style: customLabel,
                  ),
                ),
                TextFormField(
                  // The validator receives the text that the user has entered.
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Enter Topic'),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 15),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Hackathon Topic",
                    style: customHeplerText,
                  ),
                ),
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
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 15),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Hackathon Title",
                    style: customHeplerText,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Send Invitations",
                    style: customLabel,
                  ),
                ),
                SearchableDropdown.multiple(
                  items: invitationList,
                  selectedItems: invitationSelectedValues,
                  hint: Text("Send Invitations"),
                  searchHint: "",
                  onChanged: (value) {
                    setState(() {
                      invitationSelectedValues = value;
                    });
                  },
                  closeButton: (invitationSelectedValues) {
                    return (invitationSelectedValues.isNotEmpty
                        ? "Save ${invitationSelectedValues.length == 1 ? '"' + invitationList[invitationSelectedValues.first].value.toString() + '"' : '(' + invitationSelectedValues.length.toString() + ')'}"
                        : "Save without selection");
                  },
                  isExpanded: true,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 15),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Invite CIO, CXO problems in this hackathon",
                    style: customHeplerText,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Location",
                    style: customLabel,
                  ),
                ),
                SearchableDropdown.single(
                  items: locationList,
                  value: locationSelectedValue,
                  hint: "Choose a location",
                  searchHint: "Bangalore",
                  onChanged: (value) {
                    setState(() {
                      locationSelectedValue = value;
                    });
                  },
                  isExpanded: true,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 15),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Location where hackathon is held",
                    style: customHeplerText,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Team size",
                    style: customLabel,
                  ),
                ),
                TextFormField(
                  // The validator receives the text that the user has entered.
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Enter team size'),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 15),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Max number of teams",
                    style: customHeplerText,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Problems",
                    style: customLabel,
                  ),
                ),
                SearchableDropdown.multiple(
                  items: problemList,
                  selectedItems: problemSelectedValues,
                  hint: Text("Select problems"),
                  searchHint: "",
                  onChanged: (value) {
                    setState(() {
                      problemSelectedValues = value;
                    });
                  },
                  closeButton: (problemSelectedValues) {
                    return (problemSelectedValues.isNotEmpty
                        ? "Save ${problemSelectedValues.length == 1 ? '"' + problemList[problemSelectedValues.first].value.toString() + '"' : '(' + problemSelectedValues.length.toString() + ')'}"
                        : "Save without selection");
                  },
                  isExpanded: true,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 15),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Problem statements for this hackathon",
                    style: customHeplerText,
                  ),
                ),
                CupertinoButton.filled(
                  child: Text('Submit'),
                  onPressed: submitCallback,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
