import 'package:bit_magnet/models/invitation.dart';
import 'package:bit_magnet/models/participant.dart';
import 'package:bit_magnet/models/problem_statement.dart';
import 'package:bit_magnet/models/team.dart';

import 'hackathon.dart';

class SampleObjects {
  static IHackathon sampleHackathon =
      IHackathon("Hackathon Name", "DD:MM", "DD:MM", "Location", 5);

  static IProblemStatement sampleProblemStatement =
      IProblemStatement(0083, "Problem Name", "description", "Department");

  static List<IProblemStatement> samplePlist = [
    IProblemStatement(0083, "Problem Name", "description", "Department"),
    IProblemStatement(0084, "Problem Name", "description", "Department")
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
