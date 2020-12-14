import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/problem_statement_card.dart';
import 'package:bit_magnet/components/problem_statement_detailed_card.dart';

import 'package:bit_magnet/models/sample_objects.dart';
import 'package:bit_magnet/screens/author/create_problem.dart';
import 'package:bit_magnet/screens/author/problem_detail.dart';
import 'package:bit_magnet/screens/author/side_bar.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';
import 'package:bit_magnet/models/problem_statement.dart';

class AProblemList extends StatefulWidget {
  const AProblemList({
    Key key,
  }) : super(key: key);

  _AProblemListState createState() => _AProblemListState();
}

class _AProblemListState extends State<AProblemList> {
  List<IProblemStatement> problemList = SampleObjects.sampleProblemList;

  @override
  void initState() {
    super.initState();

    //API CALL : author's problem list
    problemList = SampleObjects.sampleProblemList;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AxessAppBar(),
      backgroundColor: Palette.lightGreyBackground,
      drawer: ASideBar(),
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
