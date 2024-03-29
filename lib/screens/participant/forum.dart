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

class ForumScreen extends StatefulWidget {

  @override
  _ForumScreenState createState() => _ForumScreenState();
}

class _ForumScreenState extends State<ForumScreen>
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


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AxessAppBar(),
      backgroundColor: Palette.lightGreyBackground,
      body: NestedScrollView(
        controller: ScrollController(),
        headerSliverBuilder: (context, value) {
          return [
            SliverToBoxAdapter(
              child: Container(
                child: TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Palette.greenWidget,
                  tabs: [
                    Tab(text: 'Newest'),
                    Tab(text: 'Featured'),
                    Tab(text: 'All Posts'),
                    Tab(text: 'Unanswered'),
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 32,
                              backgroundColor: Palette.lightGreyContainer,
                              child: Icon(
                                Icons.person,
                                size: 34,
                                color: Colors.white,
                              ),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                                    child: Text(
                                      "Norma Andrews",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                                    child: Text(
                                      "30 minutes ago",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.blueGrey
                                      ),
                                    ),
                                  ),
                                ]),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              padding: EdgeInsets.only(top: 20),
                              child: Text(
                                "How do I merge two dictionaries in a single expression in Python?",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.blue
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "I have two dictionaries and I want to write a single expression that returns two dictionaries, merged. How can I get the final dictionary?",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.blueGrey
                                ),
                              ),
                            ),
                            Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 30.0, right: 5, left: 5),
                                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                    color: Colors.blueGrey,
                                    child: Text('python',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 30.0, right: 5, left: 5),
                                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                    color: Colors.blueGrey,
                                    child: Text('dictionary',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 30.0, right: 5, left: 5),
                                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                    color: Colors.blueGrey,
                                    child: Text('merge',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white
                                      ),
                                    ),
                                  )
                                ]
                            ),
                            Row(
                                children: [
                                  Container(
                                      margin: const EdgeInsets.only(top: 30.0, right: 1, left: 1),
                                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                      child: Row(
                                          children: [

                                            Text('25 ',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.blue
                                              ),
                                            ),
                                            Text(' upvotes',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.blue
                                              ),)
                                          ]
                                      )
                                  ),
                                  Container(
                                      margin: const EdgeInsets.only(top: 30.0, right: 1, left: 1),
                                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                      child: Row(
                                          children: [

                                            Text('47 ',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.grey
                                              ),
                                            ),
                                            Text(' comments',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey
                                              ),)
                                          ]
                                      )
                                  ),
                                  Container(
                                      margin: const EdgeInsets.only(top: 30.0, right: 1, left: 1),
                                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                      child: Row(
                                          children: [

                                            Text('153 ',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.grey
                                              ),
                                            ),
                                            Text(' views',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey
                                              ),)
                                          ]
                                      )
                                  ),
                                ]
                            ),
                          ],
                        ),
                        Container(
                          height: 20,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 32,
                              backgroundColor: Palette.lightGreyContainer,
                              child: Icon(
                                Icons.person,
                                size: 34,
                                color: Colors.white,
                              ),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                                    child: Text(
                                      "Andrés de Fonollosa",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                                    child: Text(
                                      "58 minutes ago",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.blueGrey
                                      ),
                                    ),
                                  ),
                                ]),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              padding: EdgeInsets.only(top: 20),
                              child: Text(
                                "How to type cast for my use case in Dart 2?",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.blue
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "I am trying to clean-up some (working) code on a fork of the Flutter Architecture Samples github project. Does anyone familiar with casting in Dart 2 have any suggestions on how to clean up my attempt?",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.blueGrey
                                ),
                              ),
                            ),
                            Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 30.0, right: 5, left: 5),
                                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                    color: Colors.blueGrey,
                                    child: Text('flutter',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 30.0, right: 5, left: 5),
                                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                    color: Colors.blueGrey,
                                    child: Text('dart',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 30.0, right: 5, left: 5),
                                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                    color: Colors.blueGrey,
                                    child: Text('colors',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white
                                      ),
                                    ),
                                  )
                                ]
                            ),
                            Row(
                                children: [
                                  Container(
                                      margin: const EdgeInsets.only(top: 30.0, right: 1, left: 1),
                                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                      child: Expanded(
                                        child: Row(
                                            children: [
                                              Text('40 ',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.grey,
                                                ),
                                                overflow: TextOverflow.fade,
                                              ),
                                              Text(' upvotes',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.grey,
                                                ),
                                                overflow: TextOverflow.fade,)
                                            ]
                                        ),
                                      )
                                  ),
                                  Container(
                                      margin: const EdgeInsets.only(top: 30.0, right: 1, left: 1),
                                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                      child: Row(
                                          children: [

                                            Text('60 ',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.grey
                                              ),
                                            ),
                                            Text(' comments',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey
                                              ),)
                                          ]
                                      )
                                  ),
                                  Container(
                                      margin: const EdgeInsets.only(top: 30.0, right: 1, left: 1),
                                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                      child: Expanded(
                                        child: Row(
                                            children: [

                                              Text('303 ',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.grey
                                                ),
                                                overflow: TextOverflow.fade,
                                              ),
                                              Text(' views',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.grey
                                                ),
                                                overflow: TextOverflow.fade,)
                                            ]
                                        ),
                                      )
                                  ),
                                ]
                            ),
                          ],
                        ),
                      ]),
                ),
              ),
              SingleChildScrollView(
                controller: ScrollController(),
                child: Container(
                  child: Icon(Icons.directions_car),

                ),
              ),
              SingleChildScrollView(
                controller: ScrollController(),
                child: Icon(Icons.directions_car),
              ),
              SingleChildScrollView(
                controller: ScrollController(),
                child: Icon(Icons.directions_car),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
