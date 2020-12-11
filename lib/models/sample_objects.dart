import 'package:bit_magnet/models/invitation.dart';
import 'package:bit_magnet/models/problem_statement.dart';

import 'hackathon.dart';

class SampleObjects {
  static Hackathon sampleHackathon = Hackathon("Hackathon Name", "DD:MM", "DD:MM", "Location", 5);

  static ProblemStatement sampleProblemStatement = ProblemStatement(0083, "Problem Name", "description", "Department");

  static List<ProblemStatement> samplePlist = [ ProblemStatement(0083, "Problem Name", "description", "Department"), ProblemStatement(0084, "Problem Name", "description", "Department") ];

  static List<IInvitation> sampleIlist = [ IInvitation('1','Aditya', "hackathon1") ];
}
