import 'package:bit_magnet/components/hackathon_card.dart';
import 'package:bit_magnet/models/sample_objects.dart';
import 'package:bit_magnet/screens/author/create_problem.dart';
import 'package:bit_magnet/screens/author/home.dart';
import 'package:bit_magnet/screens/author/invitations.dart';
import 'package:bit_magnet/screens/author/problem_submit.dart';
import 'package:bit_magnet/screens/login/front_page.dart';
import 'package:bit_magnet/screens/login/login.dart';
import 'package:bit_magnet/screens/moderator/hackathon_detail.dart';
import 'package:bit_magnet/screens/moderator/hackathon_list.dart';
import 'package:bit_magnet/screens/moderator/home.dart';
import 'package:bit_magnet/screens/moderator/problem_statements_all.dart';
import 'package:bit_magnet/screens/participant/hackathon_detail.dart';
import 'package:bit_magnet/screens/participant/hackathon_list.dart';
import 'package:bit_magnet/screens/participant/home.dart';
import 'package:bit_magnet/screens/participant/test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'screens/author/problem_list.dart';

void main() {
  runApp(AxessApp());
}

class AxessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'aXess App',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      routes: {},
    );
  }
}
