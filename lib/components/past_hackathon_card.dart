import 'package:bit_magnet/models/hackathon_basic_details.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:flutter/material.dart';

class PastHackathonCard extends StatelessWidget {
  //Hackathon object
  final IHackathonBasic hackathon;
  final dynamic hackathonDetailScreen;

  PastHackathonCard(this.hackathon, this.hackathonDetailScreen);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Ink(
        decoration: BoxDecoration(
          gradient: kGradientGrey,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [kBoxShadowGrey],
        ),
        child: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 20),
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
                PastHackathonInfo(
                  Icons.calendar_today_outlined,
                  "${hackathon.startDate} to ${hackathon.endDate}",
                ),
                PastHackathonInfo(
                  Icons.location_on_outlined,
                  "${hackathon.location}",
                ),
                PastHackathonInfo(
                  Icons.event_seat_outlined,
                  "Team(s): ${hackathon.team_size}",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PastHackathonInfo extends StatelessWidget {
  final IconData iconData;
  final String infoText;

  const PastHackathonInfo(this.iconData, this.infoText);

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
