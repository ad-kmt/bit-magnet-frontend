import 'package:bit_magnet/screens/author/create_problem.dart';
import 'package:bit_magnet/screens/moderator/create_hackathon.dart';
import 'package:bit_magnet/screens/moderator/hackathon_list.dart';
import 'package:bit_magnet/screens/participant/hackathons.dart';
import 'package:bit_magnet/screens/participant/test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(AxessApp());
}

class AxessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'aXess App',
      debugShowCheckedModeBanner: false,
      home: Test(),
      routes: {},
    );
  }
}
