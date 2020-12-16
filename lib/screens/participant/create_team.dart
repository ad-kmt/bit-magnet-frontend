import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/models/sample_objects.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';

class CreateTeam extends StatefulWidget {
  const CreateTeam({
    Key key,
  }) : super(key: key);

  _CreateTeamtState createState() => _CreateTeamtState();
}

class _CreateTeamtState extends State<CreateTeam> {
  int leader;
  List<Text> team = [];

  final List<DropdownMenuItem> participantsList =
      SampleObjects.sampleParticipantsList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AxessAppBar(),
      backgroundColor: Palette.lightGreyBackground,
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.fromLTRB(16, 18, 16, 8),
            child: Text(
              "Create Team",
              style: kBlueTitle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 76),
            child: Column(children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Team Name",
                  style: customLabel,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Enter Team Name'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Add team Member",
                  style: customLabel,
                ),
              ),
              SearchableDropdown.single(
                items: participantsList,
                value: null,
                hint: "Search Team Member",
                searchHint: "Search Name or Bank ID",
                onChanged: (value) {
                  setState(() {
                    team.insert(0, Text(value));
                  });
                },
                isExpanded: true,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 14, 5),
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "Select Team Leader",
                      style: customLabel,
                    ),
                    new GestureDetector(
                      child: new Text(
                        "clear all",
                        style: smallItalic,
                      ),
                      onTap: () {
                        setState(() {
                          team = [];
                        });
                      },
                    ),
                  ],
                ),
              ),
              Container(
                  // decoration: BoxDecoration(color: Palette.lightGreyBackground),
                  child: Column(
                      children: new List.generate(team.length, (int index) {
                return new ListTile(
                  title: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        team[index],
                        Radio(
                          value: index,
                          groupValue: leader,
                          onChanged: (val) {
                            setState(() {
                              leader = index;
                            });
                          },
                        ),
                      ]),
                  onTap: () {
                    setState(() {
                      leader = index;
                    });
                  },
                );
              }))),
            ]),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print('Clicked');
        },
        label: Text('Create Team'),
        backgroundColor: Colors.green,
      ),
    );
  }
}
