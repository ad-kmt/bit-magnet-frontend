import 'package:bit_magnet/models/invitation.dart';
import 'package:bit_magnet/models/participant.dart';
import 'package:bit_magnet/models/problem_statement.dart';
import 'package:bit_magnet/models/solution.dart';
import 'package:flutter/material.dart';
import 'package:bit_magnet/models/team.dart';

import 'hackathon_basic_details.dart';

class SampleObjects {
  static IProblemStatement sampleProblemStatement = IProblemStatement(
      "0085",
      "aXess Challange App",
      "An App to build problem statements which will be later hosted on SC App. This App will be meant to be available for Senior Mnaagement (CXOs, Country Heads).",
      "Other",
      "Benefits to the team to have submit the problem statement any time on their mobile",
      "Frontend screens and possible integration with APP Center or aXess.sc.net",
      ["React", "Java", "JavaScript"]);

  static IHackathonBasic sampleHackathon = IHackathonBasic(
    '_id',
    'topic',
    'aXess Graduate Hackathon',
    'Bangalore - India',
    'team_size',
    'moderator_id',
    'createdAt',
    'updatedAt',
    'Dec 6',
    'Dec 18',
  );

  static IHackathonBasic hackathon1 = IHackathonBasic(
    '_id',
    'topic',
    'aXess Graduate Hackathon',
    'Bangalore - India',
    '15',
    'moderator_id',
    'createdAt',
    'updatedAt',
    'Dec\' 6',
    'Dec\' 18',
  );

  static IHackathonBasic hackathon2 = IHackathonBasic(
    '_id',
    'topic',
    'aXess Retail Banking Hackathon',
    'Bangalore - India',
    '15',
    'moderator_id',
    'createdAt',
    'updatedAt',
    'Jul\' 6',
    'Jul\' 18',
  );

  static IHackathonBasic pastHackathon1 = IHackathonBasic(
    '_id',
    'topic',
    'aXess Africa Hackathon',
    'Chennai - India',
    '15',
    'moderator_id',
    'createdAt',
    'updatedAt',
    'Sep\' 28',
    'Nov\' 12',
  );
  static IHackathonBasic pastHackathon2 = IHackathonBasic(
    '_id',
    'topic',
    'Multi - Faceted Hackathon',
    'Singapore',
    '5',
    'moderator_id',
    'createdAt',
    'updatedAt',
    'Jul\' 4',
    'Jul\' 17',
  );

  static List<ISolution> sampleSolutions = [
    ISolution(
      "34657689",
      "BitMagnet",
      ["Smita Smart", "Aditya Kumawat", "Amardeep", "Varun", "Kanak"],
      "Smita Smart",
      "Mobile Money SC Ruby App",
      "The proposed solution is Ruby mobile App. It is a digital version of the wallet that you can carry in your pocket. it stores payment details like credit or debil and cash balances which can be used to make payments. you can simply use your smartphone or a tablet to make the payment.",
      "Desisgned & plan the activities",
      "Flutter Framework Dart programming language python oracle Jboss Android Studio",
      "Flutter",
      "Dec 16, 2020",
      23,
      ["Helpfull", "Nice One"],
    ),
    ISolution(
      "5679809",
      "BitMagnet",
      ["Smita Smart", "Aditya Kumawat", "Amardeep", "Varun", "Kanak"],
      "Smita Smart",
      "Mobile Money SC Ruby App",
      "The proposed solution is Ruby mobile App. It is a digital version of the wallet that you can carry in your pocket. it stores payment details like credit or debil and cash balances which can be used to make payments. you can simply use your smartphone or a tablet to make the payment.",
      "Desisgned & plan the activities",
      "Flutter Framework Dart programming language python oracle Jboss Android Studio",
      "Flutter",
      "Dec 16, 2020",
      15,
      ["Helpfull", "Nice One"],
    ),
    ISolution(
      "5679888",
      "BitMagnet",
      ["Smita Smart", "Aditya Kumawat", "Amardeep", "Varun", "Kanak"],
      "Smita Smart",
      "Mobile Money SC Ruby App",
      "The proposed solution is Ruby mobile App. It is a digital version of the wallet that you can carry in your pocket. it stores payment details like credit or debil and cash balances which can be used to make payments. you can simply use your smartphone or a tablet to make the payment.",
      "Desisgned & plan the activities",
      "Flutter Framework Dart programming language python oracle Jboss Android Studio",
      "Flutter",
      "Dec 16, 2020",
      7,
      ["Helpfull", "Nice One"],
    ),
    ISolution(
      "8887774",
      "BitMagnet",
      ["Smita Smart", "Aditya Kumawat", "Amardeep", "Varun", "Kanak"],
      "Smita Smart",
      "Mobile Money SC Ruby App",
      "The proposed solution is Ruby mobile App. It is a digital version of the wallet that you can carry in your pocket. it stores payment details like credit or debil and cash balances which can be used to make payments. you can simply use your smartphone or a tablet to make the payment.",
      "Desisgned & plan the activities",
      "Flutter Framework Dart programming language python oracle Jboss Android Studio",
      "Flutter",
      "Dec 16, 2020",
      2,
      ["Helpfull", "Nice One"],
    ),
  ];

  static List<IProblemStatement> sampleProblemList = [
    IProblemStatement(
        "0083",
        "QR Code - Africa",
        "With the opening up of malls and retail sector, online and offline merchants provide a unique opportunity for us to explore a new channel/ medium for self assisted digital sales.",
        "RPBWM - Retail Core Platforms",
        "The model will provide incentives for (a) 'merchants to display SCB cards in the asset (b) clients to self initiate a registration journey",
        "Able to scan the QR code and make the transactions from one wallet to other wallet",
        ["React", "Java", "JavaScript", "Spring"]),
    IProblemStatement(
        "0084",
        "Algo trading based analysis",
        "Collect the data from the news around financial world(Moneycontrol, Bloomberg) and build a data model that can predict the risk an organisation can get on my investment",
        "RPBWM - Wealth Management",
        "It helps institutaions in increasing yield on their investment book, while simultaneously reducing the risk, by leveraging quantitative and AI techniques",
        "Model to predict the risk of the default and downgrade",
        ["React", "Java", "JavaScript"]),
    IProblemStatement(
        "0085",
        "aXess Challange App",
        "An App to build problem statements which will be later hosted on SC App. This App will be meant to be available for Senior Mnaagement (CXOs, Country Heads).",
        "Other",
        "Benefits to the team to have submit the problem statement any time on their mobile",
        "Frontend screens and possible integration with APP Center or aXess.sc.net",
        ["React", "Java", "JavaScript"]),
    IProblemStatement(
        "0086",
        "Video Support-Hearing Impaired",
        "This Problem Statement is an intent of Corporate Social Responsibility(CSR) initiative to setup the Retail Banking prospects for our clients who are hearing impaired",
        "RPBWM - Retail Core Platforms",
        "Benefit the organisation overall",
        "Creating a WebRTC and peer-to-peer communication.",
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
        child: Text('QR Code - Africa'), value: 'QR Code - Africa'),
    DropdownMenuItem(
        child: Text('Algo trading based analysis'),
        value: 'Algo trading based analysis'),
    DropdownMenuItem(
        child: Text('aXess Challange App'), value: 'aXess Challange App'),
    DropdownMenuItem(
        child: Text('Video Support-Hearing Impaired'),
        value: 'Video Support-Hearing Impaired'),
  ];

  static List<IHackathonBasic> upcomingHackathonList = [
    hackathon1,
  ];
  static List<IHackathonBasic> upcomingHackathonList2 = [
    hackathon1,
    hackathon2,
  ];

  static List<IHackathonBasic> pastHackathonList = [
    pastHackathon1,
    pastHackathon2,
  ];
  static List<IHackathonBasic> sampleHackathonList = [
    sampleHackathon,
    sampleHackathon
  ];

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
    DropdownMenuItem(
        child: Text('Microsoft Cognitive Toolkit'),
        value: 'Microsoft Cognitive Toolkit'),
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
    DropdownMenuItem(child: Text('Kofi.Blankson@sc.com'), value: 'Kofi.Blankson@sc.com'),
    DropdownMenuItem(child: Text('Williamson.Smith@sc.com'), value: 'Williamson.Smith@sc.com')
  ];
  static List<DropdownMenuItem> sampleLocationList = [
    DropdownMenuItem(child: Text('Bangalore'), value: 'Bangalore'),
    DropdownMenuItem(child: Text('Chennai'), value: 'Chennai')
  ];
  static List<DropdownMenuItem> sampleProblemList2 = [
    DropdownMenuItem(child: Text('0050: Intelligent pricing of CCIB Clients'), value: '0050: Intelligent pricing of CCIB Clients'),
    DropdownMenuItem(child: Text('0051: Mobile Money'), value: 'problem 2')
  ];

  static List<IInvitation> sampleIlist = [
    IInvitation('1', 'Shreya', sampleHackathon)
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
