import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/hackathon_widget.dart';
import 'package:bit_magnet/models/sample_objects.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';

class CreateProblem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Axess Hackathon',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AxessAppBar(),
          backgroundColor: Palette.lightGreyBackground,
          body: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.fromLTRB(16, 18, 16, 8),
                child: Text(
                  "Hackathons",
                  style: kBlueTitle,
                ),
              ),
              HackathonWidget(SampleObjects.sampleHackathon),
              HackathonWidget(SampleObjects.sampleHackathon)
            ],
          ),
        ));
  }
}
