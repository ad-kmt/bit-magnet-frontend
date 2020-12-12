import 'package:bit_magnet/screens/author/create_problem.dart';
import 'package:bit_magnet/screens/author/invitations.dart';
import 'package:bit_magnet/screens/author/problem_list.dart';
import 'package:bit_magnet/screens/participant/register.dart';
import 'package:bit_magnet/screens/participant/test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp(CreateProblem());

  runApp(MaterialApp(
    title: 'aXess App',
    debugShowCheckedModeBanner: false,
    home: Register(),
  ));
}
