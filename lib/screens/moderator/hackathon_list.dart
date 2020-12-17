import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/app_bar_admin.dart';
import 'package:bit_magnet/components/hackathon_card.dart';

import 'package:bit_magnet/models/hackathon_basic_details.dart';
import 'package:bit_magnet/models/sample_objects.dart';

import 'package:bit_magnet/screens/moderator/hackathon_detail.dart';
import 'package:bit_magnet/screens/moderator/side_bar.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';

import 'create_hackathon.dart';

class MHackathonList extends StatefulWidget {
  const MHackathonList({
    Key key,
  }) : super(key: key);

  _MHackathonListState createState() => _MHackathonListState();
}

class _MHackathonListState extends State<MHackathonList> {
  List<IHackathonBasic> hackathonList;

  @override
  void initState() {
    super.initState();

    //API CALL
    hackathonList = SampleObjects.upcomingHackathonList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(),
      backgroundColor: Palette.lightGreyBackground,
      drawer: MSideBar(),
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
                for (var hackathon in hackathonList)
                  HackathonCard(hackathon, MHackathonDetail(hackathon)),
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
