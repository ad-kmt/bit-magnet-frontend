import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/hackathon_cover.dart';
import 'package:bit_magnet/components/problem_statement_widget.dart';
import 'package:bit_magnet/models/sample_objects.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';

class ParticipantHackathon extends StatelessWidget {
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
          body: Column(
            children: [
              HackathonCover(SampleObjects.sampleHackathon),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
                child: Text(
                  "You're registered for this hackathon",
                  style: kBlackTitle,
                ),
              ),
              TeamInfo(),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.fromLTRB(16, 24, 16, 8),
                child: Text(
                  "Problem Statements",
                  style: kBlackTitle,
                ),
              ),
              ProblemStatementWidget(SampleObjects.sampleProblemStatement)
            ],
          ),
        ));
  }
}

class TeamInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.stars,
                color: Palette.darkBlue,
                size: 24,
              ),
              SizedBox(
                // here put the desired space between the icon and the text
                width: 10,
              ),
              Row(
                children: [
                  Text(
                    "Your team:",
                    style: kDarkBlueSubHeading,
                  ),
                  Text(
                    " Team name",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.people,
                color: Palette.darkBlue,
                size: 24,
              ),
              SizedBox(
                // here put the desired space between the icon and the text
                width: 10,
              ),
              Text(
                "Your teammates:",
                style: kDarkBlueSubHeading,
              )
            ],
          ),
        ),
      ],
    );
  }
}
