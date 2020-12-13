import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/bottom_bar_register.dart';
import 'package:bit_magnet/components/bottom_bar_two_buttons.dart';
import 'package:bit_magnet/components/buttons.dart';
import 'package:bit_magnet/components/hackathon_cover.dart';
import 'package:bit_magnet/components/hackathon_icon_bar.dart';
import 'package:bit_magnet/components/problem_statement_card.dart';
import 'package:bit_magnet/models/hackathon.dart';
import 'package:bit_magnet/models/participant.dart';
import 'package:bit_magnet/models/problem_statement.dart';
import 'package:bit_magnet/models/sample_objects.dart';
import 'package:bit_magnet/models/team.dart';
import 'package:bit_magnet/screens/participant/problem_statement.dart';
import 'package:bit_magnet/screens/participant/register.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';

class HackathonDetail extends StatefulWidget {
  final IParticipant participant;
  final IHackathon hackathon;

  HackathonDetail(this.hackathon, this.participant);

  @override
  _HackathonDetailState createState() => _HackathonDetailState();
}

class _HackathonDetailState extends State<HackathonDetail> {
  ITeam userTeam;
  List<IProblemStatement> userProblemStatements;
  bool isRegistered;

  @override
  void initState() {
    super.initState();
    update(widget.participant, widget.hackathon);
  }

  void update(IParticipant participant, IHackathon hackathon) {
    setState(() {
      //LOGIC TO SEE IF PARTICIPANT'S ANY TEAM IS REGISTERED
      //1. Get team details
      //2. Get which hackathon registered. Check if matches
      //3. Check which problem statement is/are registered

      //GET THESE FIELDS FROM BACKEND
      isRegistered = false;
      userTeam = SampleObjects.sampleTeam;
      userProblemStatements = [SampleObjects.sampleProblemStatement];
    });
  }

  List<Widget> showContent() {
    List<Widget> list = List();
    if (isRegistered) {
      list.add(TeamInfo(userTeam));
      list.add(ProblemList(
          "Your team's registered challenge(s):", userProblemStatements));
      list.add(ProblemList("Problem Statements", widget.hackathon.problems));
    } else {
      list.add(ProblemList("Problem Statements", widget.hackathon.problems));
    }
    return list;
  }

  BottomAppBar showRegisterButton() {
    if (isRegistered) {
      return null;
    } else {
      return BottomAppBar(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: FlatGreenButton("Register", () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Register(
                      [SampleObjects.sampleTeam, SampleObjects.sampleTeam2]);
                },
              ),
            );
          }),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var editButtonCallBack = () {};

    var publishButtonCallBack = () {};

    var returnBottomBar = () {
      //IF MODERATOR OR AUTHOR
      if (false) {
        return BottomBarTwoButtons(
            "Edit", editButtonCallBack, "Publish", publishButtonCallBack);
      }
      //IF PARTICIPANT
      else {
        return showRegisterButton();
      }
    };

    return Scaffold(
      appBar: AxessAppBar(),
      bottomNavigationBar: returnBottomBar(),
      backgroundColor: Palette.lightGreyBackground,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HackathonCover(widget.hackathon),
            HackathonIconBar(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: showContent(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TeamInfo extends StatelessWidget {
  final ITeam team;
  TeamInfo(this.team);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "You're registered for this hackathon",
          style: kBlackSubTitle,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
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
                    "Your team: ",
                    style: kDarkBlueSubHeading,
                  ),
                  Text(
                    team.name,
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
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(team.participants.length, (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: TeamMember(team.participants[index].fullName()),
              );
            }),
          ),
        ),
      ],
    );
  }
}

class TeamMember extends StatelessWidget {
  final String name;

  TeamMember(this.name);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: Palette.lightGreyContainer,
          child: Icon(
            Icons.person,
            size: 28,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            name,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}

class ProblemList extends StatelessWidget {
  final List<IProblemStatement> problems;
  final String heading;

  ProblemList(this.heading, this.problems);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: kBlackSubTitle,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(problems.length, (index) {
              return ProblemStatementCard(problems[index]);
            }),
          ),
        ],
      ),
    );
  }
}
