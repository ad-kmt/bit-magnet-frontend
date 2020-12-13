import 'package:bit_magnet/screens/author/problem_detail.dart';
import 'package:bit_magnet/screens/author/problem_submit.dart';
import 'package:bit_magnet/screens/participant/hackathons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screens/author/create_problem.dart';
import 'screens/author/create_problem.dart';
import 'screens/author/invitations.dart';
import 'screens/author/invitations.dart';
import 'screens/author/invitations.dart';
import 'screens/participant/hackathon_detail.dart';

void main() {
  runApp(AxessApp());
}

class AxessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'aXess App',
      debugShowCheckedModeBanner: false,
      home: InvitationsList(),
      routes: {},
    );
  }
}
