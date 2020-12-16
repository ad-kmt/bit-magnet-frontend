import 'package:bit_magnet/models/problem_statement.dart';

class IHackathonBasic {
  IHackathonBasic(this._id, this.topic, this.title,this.location, this.team_size, this.moderator_id, this.createdAt, this.updatedAt, this.startDate, this.endDate);
  final String _id;
  final String topic;
  final String title;
  final String location;
  final String team_size;
  final String moderator_id;
  final String createdAt;
  final String updatedAt;
  final String startDate;
  final String endDate;
  

  
  String description =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

  static List<String> instructions = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do",
    "eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
    "veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    "Excepteur sint occaecat cupidatat non proident."
  ];

  
}