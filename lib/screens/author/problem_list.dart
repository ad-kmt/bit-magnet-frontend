import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/problem_statement_widget.dart';
import 'package:bit_magnet/components/side_bar.dart';
import 'package:bit_magnet/models/sample_objects.dart';
import 'package:bit_magnet/screens/author/create_problem.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';
import 'package:bit_magnet/models/problem_statement.dart';

class ProblemList extends StatefulWidget {
  const ProblemList({
    Key key,
  }) : super(key: key);

  _ProblemListState createState() => _ProblemListState();
}

class _ProblemListState extends State<ProblemList> {
  List<IProblemStatement> samplePlist = SampleObjects.samplePlist;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AxessAppBar(),
      backgroundColor: Palette.lightGreyBackground,
      drawer: SideBar(),
      body: Column(
        children: [
          for (var problem in samplePlist) ProblemStatementWidget(problem)
        ],
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
