import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/hackathon_card.dart';
import 'package:bit_magnet/components/home_carousel.dart';
import 'package:bit_magnet/components/past_hackathon_card.dart';
import 'package:bit_magnet/models/hackathon_basic_details.dart';

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

class _PHomeState extends State<PHome> with SingleTickerProviderStateMixin {
  List<dynamic> hackathons;
  List<dynamic> pastHackathons;

  TabController _tabController;
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    hackathons = SampleObjects.upcomingHackathonList;

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
      appBar: AxessAppBar(),
      backgroundColor: Palette.lightGreyBackground,
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
                        children: List.generate(hackathons.length, (index) {
                          return HackathonCard(hackathons[index],
                              PHackathonDetail(hackathons[index]));
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
      drawer: PSideBar(),
    );
  }
}

// var column = Column(
//   children: [
//     HomeCarousel(),
//     Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 4.0),
//             child: Text(
//               "Live Hackathons",
//               style: TextStyle(
//                 color: Palette.blue,
//                 fontSize: 24,
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: List.generate(hackathons.length, (index) {
//               return HackathonCard(
//                   hackathons[index], PHackathonDetail(hackathons[index]));
//             }),
//           ),
//         ],
//       ),
//     ),
//   ],
// );
