import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/problem_statement_widget.dart';
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
    return MaterialApp(
        title: 'aXess App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AxessAppBar(),
          backgroundColor: Palette.lightGreyBackground,
          drawer: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text('Drawer Header'),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Text('Item 1'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Item 2'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
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
        ));
  }
}
