import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/problem_statement_widget.dart';
import 'package:bit_magnet/models/sample_objects.dart';
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

  List<ProblemStatement> samplePlist = SampleObjects.samplePlist;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'aXess App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AxessAppBar(),
          backgroundColor: Palette.lightGreyBackground,
          body: Column(
            children: [
              for ( var problem in samplePlist ) ProblemStatementWidget(problem)

            ],
          ),
        ));
  }
}
