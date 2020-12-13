import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/problem_statement_card.dart';
import 'package:bit_magnet/components/side_bar.dart';
import 'package:bit_magnet/models/sample_objects.dart';
import 'package:bit_magnet/screens/author/create_problem.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bit_magnet/models/problem_statement.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';

import '../../components/hackathon_cover.dart';
import '../../styles/constants.dart';
import '../participant/hackathon_detail.dart';

class ProblemSubmit extends StatefulWidget {
  const ProblemSubmit({
    Key key,
  }) : super(key: key);

  _ProblemSubmitState createState() => _ProblemSubmitState();
}

class _ProblemSubmitState extends State<ProblemSubmit> {
  List<IProblemStatement> samplePlist = SampleObjects.sampleProblemList;
  final List<DropdownMenuItem> problemList = SampleObjects.sampleProblemList2;
  List<int> problemSelectedValues = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AxessAppBar(),
          backgroundColor: Palette.lightGreyBackground,
          body: Column(
            children: [
              HackathonCover(SampleObjects.sampleHackathon),
              Container(
                margin: EdgeInsets.fromLTRB(16, 24, 16, 8),
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
                margin: EdgeInsets.fromLTRB(16, 1, 16, 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Problem statements for this hackathon",
                  style: customHeplerText,
                ),
              ),
              
              CupertinoButton.filled(
                child: Text('Submit'),
                onPressed: () { /** */ },
              ),
            ],
          ),
        );
  }
}
