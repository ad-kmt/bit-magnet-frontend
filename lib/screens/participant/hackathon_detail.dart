import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/bottom_bar_register.dart';
import 'package:bit_magnet/components/bottom_bar_two_buttons.dart';
import 'package:bit_magnet/components/buttons.dart';
import 'package:bit_magnet/components/hackathon_cover.dart';
import 'package:bit_magnet/components/hackathon_icon_bar.dart';
import 'package:bit_magnet/components/lobby_card.dart';
import 'package:bit_magnet/components/problem_statement_card.dart';
import 'package:bit_magnet/components/team_card.dart';

import 'package:bit_magnet/models/hackathon_basic_details.dart';
import 'package:bit_magnet/models/participant.dart';
import 'package:bit_magnet/models/problem_statement.dart';
import 'package:bit_magnet/models/sample_objects.dart';
import 'package:bit_magnet/models/team.dart';
import 'package:bit_magnet/screens/participant/problem_detail.dart';
import 'package:bit_magnet/screens/participant/register.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class PHackathonDetail extends StatefulWidget {
  final dynamic hackathon;
  final int initialIndex;

  PHackathonDetail(this.hackathon, [this.initialIndex = 0]);

  @override
  _PHackathonDetailState createState() => _PHackathonDetailState();
}

class _PHackathonDetailState extends State<PHackathonDetail>
    with SingleTickerProviderStateMixin {
  IParticipant participant;
  bool isRegistered;
  ITeam userTeam;
  List<IProblemStatement> userProblemStatements;

  TabController _tabController;
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    participant = SampleObjects.sampleParticipant;
    update(participant, widget.hackathon);

    _scrollController = ScrollController();
    _tabController = TabController(vsync: this, length: 4);
    _tabController.addListener(_smoothScrollToTop);
  }

  _smoothScrollToTop() {
    _scrollController.animateTo(
      0,
      duration: Duration(microseconds: 300),
      curve: Curves.ease,
    );
  }

  void update(IParticipant participant, dynamic hackathon) {
    setState(() {
      //LOGIC TO SEE IF PARTICIPANT'S ANY TEAM IS REGISTERED
      //0. Get User details
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
      list.add(
          ProblemList("Problem Statements", SampleObjects.sampleProblemList));
    } else {
      list.add(
          ProblemList("Problem Statements", SampleObjects.sampleProblemList));
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
                  return Register();
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Palette.blue, //change your color here
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return PHome();
                },
              ),
            );
          },
          child: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Container(
          alignment: Alignment.centerRight,
          child: Image(image: AssetImage("images/logo.png")),
        ),
      ),
      bottomNavigationBar: returnBottomBar(),
      backgroundColor: Palette.lightGreyBackground,
      body: NestedScrollView(
        controller: ScrollController(),
        headerSliverBuilder: (context, value) {
          return [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  HackathonCover(widget.hackathon),
                  HackathonIconBar(widget.hackathon),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                child: TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Palette.greenWidget,
                  tabs: [
                    Tab(text: 'Problem Statements'),
                    Tab(text: 'Teams'),
                    Tab(text: 'Interested Lobby'),
                    Tab(text: 'Submissions'),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.grey, width: 0.5))),
          child: TabBarView(
            controller: _tabController,
            children: [
              SingleChildScrollView(
                controller: ScrollController(),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                        SampleObjects.sampleProblemList.length, (index) {
                      return ProblemStatementCard(
                          SampleObjects.sampleProblemList[index]);
                    }),
                  ),
                ),
              ),
              SingleChildScrollView(
                controller: ScrollController(),
                child: Container(
                    child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: TeamCard(SampleObjects.sampleTeam),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: TeamCard(SampleObjects.sampleTeam),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: TeamCard(SampleObjects.sampleTeam),
                    ),
                  ],
                )),
              ),
              SingleChildScrollView(
                controller: ScrollController(),
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: LobbyCard(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: LobbyCard(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: LobbyCard(),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Display Tab 1',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            "You're registered for this hackathon",
            style: kBlackSubTitle,
          ),
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
          padding: const EdgeInsets.symmetric(vertical: 16.0),
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
