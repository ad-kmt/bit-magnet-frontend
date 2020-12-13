import 'package:bit_magnet/models/sample_objects.dart';
import 'package:bit_magnet/screens/participant/register.dart';
import 'package:flutter/material.dart';

import 'buttons.dart';

class BottomBarRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: FlatGreenButton("Register", () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Register(
                    [SampleObjects.sampleTeam, SampleObjects.sampleTeam2]);
              },
            ),
          );
        }),
      ),
    );
  }
}
