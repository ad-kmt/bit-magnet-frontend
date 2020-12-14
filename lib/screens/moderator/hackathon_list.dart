import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/hackathon_card.dart';

import 'package:bit_magnet/components/side_bar.dart';
import 'package:bit_magnet/models/hackathon.dart';
import 'package:bit_magnet/models/sample_objects.dart';

import 'package:bit_magnet/screens/moderator/create_hackathon.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';

class MHackathonList extends StatefulWidget {
  const MHackathonList({
    Key key,
  }) : super(key: key);

  _MHackathonListState createState() => _MHackathonListState();
}

class _MHackathonListState extends State<MHackathonList> {
  List<IHackathon> sampleHlist = SampleObjects.sampleHackathonList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AxessAppBar(),
      backgroundColor: Palette.lightGreyBackground,
      drawer: SideBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hackathons",
              style: kBlueTitle,
            ),
            Column(
              children: [
                for (var hackathon in sampleHlist) HackathonCard(hackathon)
              ],
            ),
          ],
        ),
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
        backgroundColor: Palette.greenWidget,
      ),
    );
  }
}
