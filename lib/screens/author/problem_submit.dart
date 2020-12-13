import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/problem_statement_card.dart';
import 'package:bit_magnet/components/side_bar.dart';
import 'package:bit_magnet/models/sample_objects.dart';
import 'package:bit_magnet/screens/author/create_problem.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';
import 'package:bit_magnet/models/problem_statement.dart';

class ProblemSubmit extends StatefulWidget {
  const ProblemSubmit({
    Key key,
  }) : super(key: key);

  _ProblemSubmitState createState() => _ProblemSubmitState();
}

class _ProblemSubmitState extends State<ProblemSubmit> {
  List<IProblemStatement> samplePlist = SampleObjects.sampleProblemList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AxessAppBar(),
      backgroundColor: Palette.lightGreyBackground,
      drawer: SideBar(),
      body: Column(
        children: [
          for (var problem in samplePlist) ProblemStatementCard(problem)
        ],
      ),
    );
  }
}
