import 'package:bit_magnet/models/team.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';

class TeamCard extends StatelessWidget {
  final ITeam team;
  final bool isSelected;

  TeamCard(this.team, this.isSelected);

  Icon showSelectIcon() {
    if (isSelected) {
      return checkedIcon;
    } else {
      return uncheckedIcon;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  team.name,
                  style: kDarkBlueSubHeading22,
                ),
                showSelectIcon(),
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(team.participants.length, (index) {
                var icon;
                if (team.participants[index].firstName ==
                    team.leader.firstName) {
                  icon = leaderIcon;
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${team.participants[index].firstName} ${team.participants[index].lastName}",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        icon,
                      ],
                    ),
                  );
                } else {
                  icon = Text("");
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${team.participants[index].firstName} ${team.participants[index].lastName}",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        icon,
                      ],
                    ),
                  );
                }
              }),
            ),
          ),
        ],
      ),
    );
  }
}

var uncheckedIcon = Icon(
  Icons.check_circle_outline,
  color: Palette.lightGreyIcon,
);
var checkedIcon = Icon(
  Icons.check_circle,
  color: Palette.greenWidget,
);

var leaderIcon = Container(
  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  decoration: BoxDecoration(
    color: Palette.darkBlue,
    borderRadius: BorderRadius.all(Radius.circular(24)),
  ),
  child: Text(
    "Leader",
    style: TextStyle(
      color: Colors.white,
      fontSize: 14,
    ),
  ),
);
