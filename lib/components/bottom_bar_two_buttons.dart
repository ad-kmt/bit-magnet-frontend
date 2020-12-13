import 'package:bit_magnet/models/sample_objects.dart';
import 'package:bit_magnet/screens/participant/register.dart';
import 'package:flutter/material.dart';

import 'buttons.dart';

class BottomBarTwoButtons extends StatelessWidget {
  final String firstButtonText;
  final firstButtonCallback;
  final String secondButtonText;
  final secondButtonCallback;

  BottomBarTwoButtons(this.firstButtonText, this.firstButtonCallback,
      this.secondButtonText, this.secondButtonCallback);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 1,
              child: FlatGreenButton(firstButtonText, firstButtonCallback),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              flex: 1,
              child: FlatBlueButton(secondButtonText, secondButtonCallback),
            ),
          ],
        ),
      ),
    );
  }
}
