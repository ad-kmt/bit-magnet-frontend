import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/app_bar_admin.dart';
import 'package:bit_magnet/components/hackathon_card.dart';
import 'package:bit_magnet/components/home_carousel.dart';

import 'package:bit_magnet/components/side_bar.dart';
import 'package:bit_magnet/models/hackathon_basic_details.dart';

import 'package:bit_magnet/models/sample_objects.dart';


import 'package:bit_magnet/screens/moderator/hackathon_detail.dart';
import 'package:bit_magnet/screens/moderator/side_bar.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';

import 'create_hackathon.dart';

class MHome extends StatefulWidget {
  const MHome({
    Key key,
  }) : super(key: key);

  _MHomeState createState() => _MHomeState();
}

class _MHomeState extends State<MHome> {
  List<IHackathonBasic> hackathonList;

  @override
  void initState() {
    super.initState();

    //API CALL
    hackathonList = SampleObjects.sampleHackathonList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(),
      backgroundColor: Palette.lightGreyBackground,
      drawer: MSideBar(),
      body: Column(
        children: [
          HomeCarousel(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hackathons",
                  style: TextStyle(
                    color: Palette.blue,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
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
        backgroundColor: Palette.greenWidget,
      ),
    );
  }
}
