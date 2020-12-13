import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';

class FlatGreenButton extends StatelessWidget {
  final String textContent;
  final callback;

  const FlatGreenButton(this.textContent, this.callback);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Palette.greenWidget,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      onPressed: () {
        callback();
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          textContent,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
    );
  }
}

class FlatBlueButton extends StatelessWidget {
  final String textContent;
  final callback;

  const FlatBlueButton(this.textContent, this.callback);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Palette.darkBlue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      onPressed: () {
        callback();
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          textContent,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
    );
  }
}
