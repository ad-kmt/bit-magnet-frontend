import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/hackathon_card.dart';
import 'package:bit_magnet/models/sample_objects.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';

class Hackathons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AxessAppBar(),
          backgroundColor: Palette.lightGreyBackground,
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hackathons",
                  style: kBlueTitle,
                ),
                HackathonCard(SampleObjects.sampleHackathon),
                HackathonCard(SampleObjects.sampleHackathon)
              ],
            ),
          ),
        ));
  }
}
