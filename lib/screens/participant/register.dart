import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/buttons.dart';
import 'package:bit_magnet/components/team_card_select.dart';
import 'package:bit_magnet/models/hackathon_basic_details.dart';
import 'package:bit_magnet/models/problem_statement.dart';
import 'package:bit_magnet/models/sample_objects.dart';
import 'package:bit_magnet/models/team.dart';
import 'package:bit_magnet/screens/participant/create_team.dart';
import 'package:bit_magnet/screens/participant/forum.dart';
import 'package:bit_magnet/screens/participant/hackathon_detail.dart';
import 'package:bit_magnet/screens/participant/hackathon_detail_registered.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:bit_magnet/models/sample_objects.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  List<bool> teamState = List<bool>();
  List<ITeam> userTeams;
  String selectedProblem;

  final List<DropdownMenuItem> problemList = SampleObjects.sampleProblemsList;

  @override
  void initState() {
    super.initState();

    //API CALL : get list of teams of the user. $userTeams.
    userTeams = [SampleObjects.sampleTeam, SampleObjects.sampleTeam2];

    for (int i = 0; i <= userTeams.length; i++) {
      teamState.add(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    var createTeamCallback = () {
      print('Clicked');
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CreateTeam()),
      );
    };

    return Scaffold(
      appBar: AxessAppBar(),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: FlatGreenButton(
            "Register",
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PHackathonDetailRegistered(SampleObjects.hackathon1);
                  },
                ),
              );
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Problem:",
                style: kBlackSubTitle,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: SearchableDropdown.single(
                  items: problemList,
                  value: selectedProblem,
                  hint: "Select a Problem",
                  searchHint: "Search Problem by name",
                  onChanged: (value) {
                    setState(() {
                      selectedProblem = value;
                    });
                  },
                  displayClearIcon: false,
                  isExpanded: true,
                  dialogBox: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Ink(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                    boxShadow: [
                      kBoxShadowGrey,
                    ],
                  ),
                  child: InkWell(
                    onTap: () {
                      // Check ICON Logic
                      // setState(() {
                      //   print(teamState);
                      //   teamState[0] = !teamState[0];
                      //   for (int i = 1; i < teamState.length; i++) {
                      //     teamState[i] = false;
                      //   }
                      //   print(teamState);
                      // });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return PHackathonDetail(SampleObjects.hackathon1);
                          },
                        ),
                      );
                    },
                    child: LobbyCardCheck(teamState[0]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "You have ${userTeams.length} teams:",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Select one to proceed",
                      style: kGreyInfo,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  children: [
                    Expanded(
                      flex: 10,
                      child: Container(
                        height: 2.0,
                        color: Palette.darkBlue,
                      ),
                    ),
                    ClipOval(
                      child: Material(
                        color: Palette.greenWidget, // button color
                        child: InkWell(
                          splashColor: Colors.green.shade500, // inkwell color
                          child: SizedBox(
                            width: 48,
                            height: 48,
                            child: Icon(
                              Icons.add,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                          onTap: createTeamCallback,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 2.0,
                        color: Palette.darkBlue,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  userTeams.length,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Ink(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                          boxShadow: [
                            kBoxShadowGrey,
                          ],
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              print(teamState);
                              for (int i = 0; i < teamState.length; i++) {
                                if (i == index + 1) {
                                  teamState[i] = !teamState[i];
                                } else {
                                  teamState[i] = false;
                                }
                              }
                              print(teamState);
                            });
                          },
                          child: TeamCardSelect(
                              userTeams[index], teamState[index + 1]),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LobbyCardCheck extends StatelessWidget {
  final uncheckedIcon = Icon(
    Icons.check_circle_outline,
    color: Palette.lightGreyIcon,
  );
  final checkedIcon = Icon(
    Icons.check_circle,
    color: Palette.greenWidget,
  );
  final bool isSelected;

  LobbyCardCheck(this.isSelected);

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Text(
                      "Interested, but no team?",
                      style: kDarkBlueSubHeading22,
                    ),
                  ),
                  Container(
                      child: Text(
                    "Join Lobby",
                    style: TextStyle(
                        fontSize: 18,
                        color: Palette.greenWidget,
                        fontWeight: FontWeight.w600),
                  )),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Palette.lightGreyIcon,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
