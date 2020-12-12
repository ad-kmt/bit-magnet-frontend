import 'package:bit_magnet/models/invitation.dart';
import 'package:bit_magnet/models/participant.dart';
import 'package:bit_magnet/models/problem_statement.dart';
import 'package:flutter/material.dart';
import 'package:bit_magnet/models/team.dart';
import 'hackathon.dart';

class SampleObjects {
  static IHackathon sampleHackathon =
      IHackathon("Hackathon Name", "DD:MM", "DD:MM", "Location", 5);

  static IProblemStatement sampleProblemStatement = IProblemStatement(
      "0083",
      "Problem Name",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "RPBWM - Some Department",
      "Lorem ipsum",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
      ["React", "Java", "JavaScript"]);

  static List<IProblemStatement> samplePlist = [
    IProblemStatement(
        "0083",
        "Problem Name",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        "RPBWM - Some Department",
        "Lorem ipsum",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
        ["React", "Java", "JavaScript"]),
    IProblemStatement(
        "0084",
        "Problem Name",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        "RPBWM - Some Department",
        "Lorem ipsum",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
        ["React", "Java", "JavaScript"])
  ];

  static List<IHackathon> sampleHlist = [
    IHackathon("Hackathon 1", "DD:MM", "DD:MM", "Location", 5),
    IHackathon("Hackathon 2", "DD:MM", "DD:MM", "Location", 5)
  ];

  static List<DropdownMenuItem> sampleGroupList = [
    DropdownMenuItem(child: Text('Retails'), value: 'Retails'),
    DropdownMenuItem(child: Text('CCIB'), value: 'CCIB')
  ];
  static List<DropdownMenuItem> sampleSkillList = [
    DropdownMenuItem(child: Text('ReactJS'), value: 'ReactJS'),
    DropdownMenuItem(child: Text('NodeJS'), value: 'NodeJS')
  ];

  static List<IInvitation> sampleIlist = [
    IInvitation('1', 'Aditya', "hackathon1")
  ];

  static List<IParticipant> sampleParticipants = [
    IParticipant("Aditya", "Kumawat"),
    IParticipant("Varun", "Bhandia"),
    IParticipant("Amardeep", "Singh"),
    IParticipant("Smita", "Meshram"),
    IParticipant("Kanak", "Durga"),
  ];

  static ITeam sampleTeam =
      ITeam(sampleParticipants, IParticipant("Smita", "Meshram"), "Bit Magnet");
}
