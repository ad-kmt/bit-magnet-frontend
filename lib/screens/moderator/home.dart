import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/app_bar_admin.dart';
import 'package:bit_magnet/components/hackathon_card.dart';
import 'package:bit_magnet/components/home_carousel.dart';
import 'package:bit_magnet/components/past_hackathon_card.dart';

import 'package:bit_magnet/components/side_bar.dart';
import 'package:bit_magnet/models/hackathon_basic_details.dart';

import 'package:bit_magnet/models/sample_objects.dart';

import 'package:bit_magnet/screens/moderator/hackathon_detail.dart';
import 'package:bit_magnet/screens/moderator/side_bar.dart';
import 'package:bit_magnet/screens/participant/hackathon_detail.dart';
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

class _MHomeState extends State<MHome> with SingleTickerProviderStateMixin {
  List<IHackathonBasic> hackathonList;
  List<dynamic> pastHackathons;

  TabController _tabController;
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    //API CALL
    hackathonList = SampleObjects.upcomingHackathonList;

    pastHackathons = SampleObjects.pastHackathonList;

    _scrollController = ScrollController();
    _tabController = TabController(vsync: this, length: 2);
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
      appBar: MAppBar(),
      backgroundColor: Palette.lightGreyBackground,
      drawer: MSideBar(),
      body: NestedScrollView(
        controller: ScrollController(),
        headerSliverBuilder: (context, value) {
          return [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  HomeCarousel(),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                child: TabBar(
                  controller: _tabController,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Palette.greenWidget,
                  tabs: [
                    Tab(text: 'Hackathons'),
                    Tab(text: 'Past Hackathons'),
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
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(hackathonList.length, (index) {
                          return HackathonCard(hackathonList[index],
                              MHackathonDetail(hackathonList[index]));
                        }),
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                controller: ScrollController(),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(pastHackathons.length, (index) {
                          return PastHackathonCard(pastHackathons[index],
                              PHackathonDetail(pastHackathons[index]));
                        }),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
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

// var col = Column(
//   children: [
//     HomeCarousel(),
//     Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "Hackathons",
//             style: TextStyle(
//               color: Palette.blue,
//               fontSize: 24,
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//           Column(
//             children: [
//               for (var hackathon in hackathonList)
//                 HackathonCard(hackathon, MHackathonDetail(hackathon)),
//             ],
//           ),
//         ],
//       ),
//     ),
//   ],
// );
