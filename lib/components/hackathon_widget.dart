import 'package:bit_magnet/models/hackathon.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:flutter/material.dart';

class HackathonWidget extends StatelessWidget {
  //Hackathon object
  final Hackathon hackathon;

  HackathonWidget(this.hackathon);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: kGradientBoxDecoration,
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

class HackathonInfo extends StatelessWidget {
  final IconData iconData;
  final String infoText;

  const HackathonInfo(this.iconData, this.infoText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(9, 14, 0, 0),
      child: Row(
        children: <Widget>[
          Icon(
            iconData,
            color: Colors.white,
            size: 16,
          ),
          SizedBox(
            width:
                10, // here put the desired space between the icon and the text
          ),
          Text(
            infoText,
            style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }
}
