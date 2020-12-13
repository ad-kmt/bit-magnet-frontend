import 'package:bit_magnet/models/problem_statement.dart';

class IHackathon {
  IHackathon(
      this.title, this.startDate, this.endDate, this.location, this.spaceLeft, this.problems);

  final String title;
  final String startDate;
  final String endDate;
  final String location;
  final int spaceLeft;
  final List<IProblemStatement> problems;

  static List<String> instructions = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do",
    "eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
    "veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    "Excepteur sint occaecat cupidatat non proident."
  ];

  @override
  String toString() {
    return 'Hackathon{title: $title, startDate: $startDate, endDate: $endDate, location: $location, spaceLeft: $spaceLeft}';
  }
}
