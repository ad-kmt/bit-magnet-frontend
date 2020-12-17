import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/hackathon_cover.dart';
import 'package:bit_magnet/components/hackathon_icon_bar.dart';
import 'package:bit_magnet/components/home_carousel.dart';
import 'package:bit_magnet/components/lobby_card.dart';
import 'package:bit_magnet/components/problem_statement_detailed_card.dart';
import 'package:bit_magnet/components/team_card.dart';
import 'package:bit_magnet/components/team_card_select.dart';
import 'package:bit_magnet/models/sample_objects.dart';
import 'package:bit_magnet/screens/participant/hackathon_detail.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AxessAppBar(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          LobbyCard(),
        ],
      ),
    );
  }
}
