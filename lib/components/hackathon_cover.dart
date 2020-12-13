import 'package:bit_magnet/models/hackathon.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:flutter/material.dart';

import 'hackathon_card.dart';

class HackathonCover extends StatelessWidget {
  //Hackathon object
  final IHackathon hackathon;

  HackathonCover(this.hackathon);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: kGradientFlatBoxDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              hackathon.title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
          ),
          HackathonInfo(
            Icons.calendar_today_outlined,
            "${hackathon.startDate} to ${hackathon.endDate}",
          ),
          HackathonInfo(
            Icons.location_on_outlined,
            "${hackathon.location}",
          ),
          HackathonInfo(
            Icons.event_seat_outlined,
            "Space left: ${hackathon.spaceLeft} teams",
          ),
        ],
      ),
    );
  }
}
