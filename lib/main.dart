import 'package:bit_magnet/screens/participant/hackathons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AxessApp());
}

class AxessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'aXess App',
      debugShowCheckedModeBanner: false,
      home: Hackathons(),
      routes: {},
    );
  }
}
