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
      "Welcome to the aXess Year End Hackathon, exclusively for our talented Graduate. We always cherish the great ideas and solutions from you. The idea of this hackathon is to ensure, based on your passion and interest we make this more meaningful.";

  static List<String> instructions = [
    "Register your team first with PSID on your portal using the registration link. Don't forget to include yourself!",
    "Once registered with your team, register on the problem statement with your team",
    "An invite will be sent to you and your teams on Briefing Sessions and Clinic Sessions",
    "Start working on your component from now",
    "Contact aXess.Hackathon@sc.com for any further details"
  ];

  
}