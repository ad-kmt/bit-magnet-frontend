import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/app_bar_admin.dart';
import 'package:bit_magnet/components/bottom_bar_register.dart';
import 'package:bit_magnet/components/bottom_bar_two_buttons.dart';
import 'package:bit_magnet/components/buttons.dart';
import 'package:bit_magnet/components/hackathon_cover.dart';
import 'package:bit_magnet/components/hackathon_icon_bar.dart';
import 'package:bit_magnet/components/lobby_card.dart';
import 'package:bit_magnet/components/problem_statement_card.dart';
import 'package:bit_magnet/components/problem_statement_detailed_card.dart';
import 'package:bit_magnet/components/team_card.dart';
import 'package:bit_magnet/models/hackathon_basic_details.dart';

import 'package:bit_magnet/models/participant.dart';
import 'package:bit_magnet/models/problem_statement.dart';
import 'package:bit_magnet/models/sample_objects.dart';
import 'package:bit_magnet/models/team.dart';
import 'package:bit_magnet/screens/moderator/problem_detail.dart';
import 'package:bit_magnet/screens/participant/problem_detail.dart';
import 'package:bit_magnet/screens/participant/register.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';

class MHackathonDetail extends StatefulWidget {
  final dynamic hackathon;

  MHackathonDetail(this.hackathon);

  @override
  _MHackathonDetailState createState() => _MHackathonDetailState();
}

class _MHackathonDetailState extends State<MHackathonDetail>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();

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

  List<Widget> showContent() {
    List<Widget> list = List();
    list.add(
        ProblemList("Problem Statements", SampleObjects.sampleProblemList));
    return list;
  }

  @override
  Widget build(BuildContext context) {
    var editButtonCallBack = () {};

    var publishButtonCallBack = () {
      //API CALL PUT:  hackathon update
    };

    return Scaffold(
      appBar: MAppBar(),
      bottomNavigationBar: BottomBarTwoButtons(
          "Edit", editButtonCallBack, "Publish", publishButtonCallBack),
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
                          child: TeamCard(SampleObjects.sampleTeam2),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TeamCard(SampleObjects.sampleTeam3),
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
                  child: Text('Submissions',
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 22,
                          fontWeight: FontWeight.w600)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// var single = SingleChildScrollView(
//   child: Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       HackathonCover(widget.hackathon),
//       HackathonIconBar(widget.hackathon),
//       Padding(
//         padding:
//         const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: showContent(),
//         ),
//       )
//     ],
//   ),
// );

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
              return ProblemStatementDetailedCard(
                problems[index],
                MProblemDetail(problems[index], "hackathon"),
              );
            }),
          ),
        ],
      ),
    );
  }
}
