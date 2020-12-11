import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';

class ProblemStatement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(28, 16, 16, 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(28),
                topRight: Radius.circular(28),
              ),
            ),
            child: Row(
              children: [
                Text(
                  "0086 :",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                ),
                Text(
                  " Problem Name",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(28, 16, 16, 16),
            decoration: BoxDecoration(
              color: Palette.darkBlue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(28),
                bottomRight: Radius.circular(28),
              ),
            ),
            child: Text(
              "Department",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
            ),
          ),
        ],
      ),
    );
  }
}
