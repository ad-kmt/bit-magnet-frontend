import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';

class FlatGreenButton extends StatelessWidget {
  final String textContent;

  const FlatGreenButton(this.textContent);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Palette.greenWidget,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      onPressed: () => print(textContent),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          textContent,
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
    );
  }
}
