import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/hackathon_icon_bar.dart';
import 'package:bit_magnet/components/problem_statement_detailed_card.dart';
import 'package:bit_magnet/components/team_card.dart';
import 'package:bit_magnet/models/problem_statement.dart';
import 'package:bit_magnet/models/sample_objects.dart';
import 'package:bit_magnet/screens/author/create_problem.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';

class MProblemList extends StatefulWidget {
  @override
  _MProblemListState createState() => _MProblemListState();
}

class _MProblemListState extends State<MProblemList> {
  List<IProblemStatement> problems;

  @override
  void initState() {
    super.initState();
    problems = SampleObjects.sampleProblemList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AxessAppBar(),
      backgroundColor: Palette.lightGreyBackground,
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
        backgroundColor: Palette.greenWidget,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Problem Statements: ",
                style: kBlackSubTitle,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(problems.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: ProblemStatementDetailedCard(problems[index]),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
