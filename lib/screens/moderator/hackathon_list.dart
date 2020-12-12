import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/hackathon_card.dart';
import 'package:bit_magnet/components/problem_statement_widget.dart';
import 'package:bit_magnet/components/side_bar.dart';
import 'package:bit_magnet/models/hackathon.dart';
import 'package:bit_magnet/models/sample_objects.dart';
import 'package:bit_magnet/screens/author/create_problem.dart';
import 'package:bit_magnet/screens/moderator/create_hackathon.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';
import 'package:bit_magnet/models/problem_statement.dart';

class HackathonList extends StatefulWidget {
  const HackathonList({
    Key key,
  }) : super(key: key);

  _HackathonListState createState() => _HackathonListState();
}

class _HackathonListState extends State<HackathonList> {
  List<IHackathon> sampleHlist = SampleObjects.sampleHlist;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AxessAppBar(),
      backgroundColor: Palette.lightGreyBackground,
      drawer: SideBar(),
      body: Column(
        children: [
          for (var hackathon in sampleHlist) HackathonCard(hackathon)
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print('Clicked');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreateHackathon()),
          );
        },
        label: Text('Create'),
        icon: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}
