// import 'package:bit_magnet/components/app_bar.dart';
// import 'package:bit_magnet/components/hackathon_cover.dart';
// import 'package:bit_magnet/components/hackathon_icon_bar.dart';
// import 'package:bit_magnet/components/problem_statement_card.dart';
// import 'package:bit_magnet/models/hackathon.dart';
// import 'package:bit_magnet/models/problem_statement.dart';
// import 'package:bit_magnet/models/sample_objects.dart';
// import 'package:bit_magnet/models/team.dart';
// import 'package:bit_magnet/styles/constants.dart';
// import 'package:bit_magnet/styles/palette.dart';
// import 'package:flutter/material.dart';
//
// class HackathonDetailTemp extends StatelessWidget {
//   final IHackathon hackathon;
//   final ITeam team;
//   HackathonDetailTemp(this.hackathon, this.team);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AxessAppBar(),
//       backgroundColor: Palette.lightGreyBackground,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             HackathonCover(this.hackathon),
//             HackathonIconBar(),
//             Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
//               child: RegisteredUserScreen(team, hackathon.problems),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class TeamInfo extends StatelessWidget {
//   final ITeam team;
//   TeamInfo(this.team);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text(
//           "You're registered for this hackathon",
//           style: kBlackSubTitle,
//         ),
//         Padding(
//           padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
//           child: Row(
//             children: <Widget>[
//               Icon(
//                 Icons.stars,
//                 color: Palette.darkBlue,
//                 size: 24,
//               ),
//               SizedBox(
//                 // here put the desired space between the icon and the text
//                 width: 10,
//               ),
//               Row(
//                 children: [
//                   Text(
//                     "Your team:",
//                     style: kDarkBlueSubHeading,
//                   ),
//                   Text(
//                     " Team name",
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 20.0,
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
//           child: Row(
//             children: <Widget>[
//               Icon(
//                 Icons.people,
//                 color: Palette.darkBlue,
//                 size: 24,
//               ),
//               SizedBox(
//                 // here put the desired space between the icon and the text
//                 width: 10,
//               ),
//               Text(
//                 "Your teammates:",
//                 style: kDarkBlueSubHeading,
//               )
//             ],
//           ),
//         ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: List.generate(team.participants.length, (index) {
//             return Padding(
//               padding: const EdgeInsets.symmetric(vertical: 6),
//               child: TeamMember(team.participants[index].fullName()),
//             );
//           }),
//         ),
//       ],
//     );
//   }
// }
//
// class TeamMember extends StatelessWidget {
//   final String name;
//
//   TeamMember(this.name);
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         CircleAvatar(
//           radius: 30,
//           backgroundColor: Palette.lightGreyContainer,
//           child: Icon(
//             Icons.person,
//             size: 30,
//             color: Colors.white,
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: Text(
//             name,
//             style: TextStyle(fontSize: 18),
//           ),
//         ),
//       ],
//     );
//   }
// }
//
// class NotRegisteredUserScreen extends StatelessWidget {
//   final List<IProblemStatement> problems;
//   NotRegisteredUserScreen(this.problems);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           "Problem Statements",
//           style: kBlackSubTitle,
//         ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: List.generate(problems.length, (index) {
//             return ProblemStatementCard(problems[index]);
//           }),
//         ),
//       ],
//     );
//   }
// }
//
// class RegisteredUserScreen extends StatelessWidget {
//   final ITeam team;
//   final List<IProblemStatement> problems;
//   RegisteredUserScreen(this.team, this.problems);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         TeamInfo(team),
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: 8.0),
//           child: Column(
//             children: [
//               Text(
//                 "Your team's registered challenge(s):",
//                 style: kBlackSubTitle,
//               ),
//               ProblemStatementCard(SampleObjects.sampleProblemStatement),
//             ],
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: 8.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Problem Statements",
//                 style: kBlackSubTitle,
//               ),
//               ProblemStatementCard(SampleObjects.sampleProblemStatement),
//               ProblemStatementCard(SampleObjects.sampleProblemStatement),
//               ProblemStatementCard(SampleObjects.sampleProblemStatement),
//               ProblemStatementCard(SampleObjects.sampleProblemStatement),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
