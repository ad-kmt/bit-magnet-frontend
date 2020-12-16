import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/hackathon_card.dart';
import 'package:bit_magnet/components/home_carousel.dart';
import 'package:bit_magnet/models/hackathon.dart';
import 'package:bit_magnet/models/sample_objects.dart';
import 'package:bit_magnet/screens/participant/side_bar.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';

import 'hackathon_detail.dart';

class PHome extends StatefulWidget {
  @override
  _PHomeState createState() => _PHomeState();
}

class _PHomeState extends State<PHome> {
  List<IHackathon> hackathons;

  @override
  void initState() {
    super.initState();
    hackathons = SampleObjects.sampleHackathonList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AxessAppBar(),
      backgroundColor: Palette.lightGreyBackground,
      body: Column(
        children: [
          HomeCarousel(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    "Hackathons",
                    style: TextStyle(
                      color: Palette.blue,
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(hackathons.length, (index) {
                    return HackathonCard(
                        hackathons[index], PHackathonDetail(hackathons[index]));
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: PSideBar(),
    );
  }
}
