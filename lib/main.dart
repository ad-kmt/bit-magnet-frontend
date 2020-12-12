import 'package:bit_magnet/models/sample_objects.dart';
import 'package:bit_magnet/screens/author/create_problem.dart';
import 'package:bit_magnet/screens/author/invitations.dart';
import 'package:bit_magnet/screens/author/problem_list.dart';
import 'package:bit_magnet/screens/login/login.dart';
import 'package:bit_magnet/screens/moderator/hackathon_list.dart';
import 'package:bit_magnet/screens/participant/problem_statement.dart';
import 'package:bit_magnet/screens/participant/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'aXess App',
    debugShowCheckedModeBanner: false,
//    home: ProblemStatement(),
    home: ProblemStatement(SampleObjects.sampleProblemStatement),
  ));
}
