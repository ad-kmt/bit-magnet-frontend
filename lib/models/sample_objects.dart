import 'package:bit_magnet/models/invitation.dart';
import 'package:bit_magnet/models/participant.dart';
import 'package:bit_magnet/models/problem_statement.dart';
import 'package:flutter/material.dart';
import 'package:bit_magnet/models/team.dart';

import 'hackathon_basic_details.dart';

class SampleObjects {
  static IProblemStatement sampleProblemStatement = IProblemStatement(
      "0083",
      "Problem Name",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "RPBWM - Some Department",
      "Lorem ipsum",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
      ["React", "Java", "JavaScript"]);

  static IHackathonBasic sampleHackathon = IHackathonBasic(
    '_id',
    'topic',
    'title',
    'location',
    'team_size',
    'moderator_id',
    'createdAt',
    'updatedAt',
    'startDate',
    'endDate',
    
  );

  static List<IProblemStatement> sampleProblemList = [
    IProblemStatement(
        "0083",
        "Problem Name 1",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        "RPBWM - Some Department",
        "Lorem ipsum",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
        ["React", "Java", "JavaScript"]),
    IProblemStatement(
        "0084",
        "Problem Name 2",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        "RPBWM - Some Department",
        "Lorem ipsum",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
        ["React", "Java", "JavaScript"]),
    IProblemStatement(
        "0085",
        "Problem Name 3",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        "RPBWM - Some Department",
        "Lorem ipsum",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
        ["React", "Java", "JavaScript"]),
    IProblemStatement(
        "0086",
        "Problem Name 4",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        "RPBWM - Some Department",
        "Lorem ipsum",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
        ["React", "Java", "JavaScript"]),
  ];

  static List<DropdownMenuItem> sampleParticipantsList = [
    DropdownMenuItem(
        child: Text('Amardeep Saini (1626143)'),
        value: 'Amardeep Saini (1626143)'),
    DropdownMenuItem(
        child: Text('Aditya Kumawat (1626888)'),
        value: 'Aditya Kumawat (1626888)'),
    DropdownMenuItem(
        child: Text('Varun Bhandia (1626999)'),
        value: 'Varun Bhandia (1626999)'),
    DropdownMenuItem(
        child: Text('Smita Smart (1626777)'), value: 'Smita Smart (1626777)'),
    DropdownMenuItem(
        child: Text('Kanak Durga (1626444)'), value: 'Kanak Durga (1626444)'),
  ];

  static List<DropdownMenuItem> sampleProblemsList = [
    DropdownMenuItem(
        child: Text('Axess Challenge App'), value: 'Axess Challenge App'),
    DropdownMenuItem(child: Text('Gamification'), value: 'Gamification'),
    DropdownMenuItem(child: Text('House Pricing'), value: 'House Pricing'),
    DropdownMenuItem(
        child: Text('virtual customer assistant'),
        value: 'virtual customer assistant'),
    DropdownMenuItem(
        child: Text('Stock Market Challenge'), value: 'Stock Market Challenge'),
  ];
  static List<IHackathonBasic> sampleHackathonList = [sampleHackathon, sampleHackathon];

  static List<DropdownMenuItem> sampleGroupList = [
    DropdownMenuItem(child: Text('Retails'), value: 'Retails'),
    DropdownMenuItem(child: Text('CCIB'), value: 'CCIB'),
  ];
  static List<DropdownMenuItem> sampleSkillList = [
    DropdownMenuItem(child: Text('React JS'), value: 'React JS'),
    DropdownMenuItem(child: Text('Node JS'), value: 'Node JS'),
    DropdownMenuItem(child: Text('Angular'), value: 'Angular'),
    DropdownMenuItem(child: Text('Express'), value: 'Express'),
    DropdownMenuItem(child: Text('Django'), value: 'Django'),
    DropdownMenuItem(child: Text('Flask'), value: 'Flask'),
    DropdownMenuItem(child: Text('Bootstrap'), value: 'Bootstrap'),
    DropdownMenuItem(child: Text('jQuery'), value: 'jQuery'),
    DropdownMenuItem(child: Text('Ruby on Rails'), value: 'Ruby on Rails'),
    DropdownMenuItem(child: Text('GraphQL'), value: 'GraphQL'),
    DropdownMenuItem(child: Text('JavaScript'), value: 'JavaScript'),
    DropdownMenuItem(child: Text('PHP'), value: 'PHP'),
    DropdownMenuItem(child: Text('Python'), value: 'Python'),
    DropdownMenuItem(child: Text('Ruby'), value: 'Ruby'),
    DropdownMenuItem(child: Text('Java'), value: 'Java'),
    DropdownMenuItem(child: Text('NPM'), value: 'NPM'),
    DropdownMenuItem(child: Text('TensorFlow'), value: 'TensorFlow'),
    DropdownMenuItem(child: Text('Keras'), value: 'Keras'),
    DropdownMenuItem(child: Text('Scikit-learn'), value: 'Scikit-learn'),
    DropdownMenuItem(child: Text('Microsoft Cognitive Toolkit'), value: 'Microsoft Cognitive Toolkit'),
    DropdownMenuItem(child: Text('Theano'), value: 'Theano'),
    DropdownMenuItem(child: Text('Caffe'), value: 'Caffe'),
    DropdownMenuItem(child: Text('Torch'), value: 'Torch'),
    DropdownMenuItem(child: Text('Accord.NET'), value: 'Accord.NET'),
    DropdownMenuItem(child: Text('PyTorch'), value: 'PyTorch'),
    DropdownMenuItem(child: Text('Weka'), value: 'Weka'),
    DropdownMenuItem(child: Text('KNIME'), value: 'KNIME'),
    DropdownMenuItem(child: Text('Colab'), value: 'Colab'),
    DropdownMenuItem(child: Text('Apache Mahout'), value: 'Apache Mahout'),
    DropdownMenuItem(child: Text('Accors.Net'), value: 'Accors.Net'),
    DropdownMenuItem(child: Text('Shogun'), value: 'Shogun'),
    DropdownMenuItem(child: Text('Keras.io'), value: 'Keras.io'),
    DropdownMenuItem(child: Text('Rapid Miner'), value: 'Rapid Miner'),
  ];
  static List<DropdownMenuItem> sampleInvitationList = [
    DropdownMenuItem(child: Text('Aditya@sc.com'), value: 'Aditya@sc.com'),
    DropdownMenuItem(child: Text('amar@sc.com'), value: 'amar@sc.com')
  ];
  static List<DropdownMenuItem> sampleLocationList = [
    DropdownMenuItem(child: Text('Bangalore'), value: 'Bangalore'),
    DropdownMenuItem(child: Text('Chennai'), value: 'Chennai')
  ];
  static List<DropdownMenuItem> sampleProblemList2 = [
    DropdownMenuItem(child: Text('problem 1'), value: 'problem 1'),
    DropdownMenuItem(child: Text('problem 2'), value: 'problem 2')
  ];

  static List<IInvitation> sampleIlist = [
    IInvitation('1', 'Aditya', sampleHackathon)
  ];

  static List<IParticipant> sampleParticipants = [
    IParticipant("Aditya", "Kumawat"),
    IParticipant("Varun", "Bhandia"),
    IParticipant("Amardeep", "Singh"),
    IParticipant("Smita", "Meshram"),
    IParticipant("Kanak", "Durga"),
  ];

  static List<IParticipant> sampleParticipants2 = [
    IParticipant("Aditya", "Kumawat"),
    IParticipant("Varun", "Bhandia"),
    IParticipant("Amardeep", "Singh"),
  ];

  static IParticipant sampleParticipant = IParticipant("Aditya", "Kumawat");

  static ITeam sampleTeam =
      ITeam(sampleParticipants, IParticipant("Smita", "Meshram"), "Bit Magnet");

  static ITeam sampleTeam2 = ITeam(
      sampleParticipants2, IParticipant("Amardeep", "Singh"), "Elastic Minds");
}
