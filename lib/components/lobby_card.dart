import 'package:bit_magnet/models/sample_objects.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';

class LobbyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(24)),
        boxShadow: [kBoxShadowGrey],
      ),
      margin: EdgeInsets.symmetric(horizontal: 4),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "${SampleObjects.sampleProblemStatement.id}: ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                Text(
                  SampleObjects.sampleProblemStatement.title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text(
              "Shubham Shree",
              style: TextStyle(fontSize: 16),
            ),
            trailing: Icon(
              Icons.chat_bubble_outline_rounded,
              size: 18,
            ),
          ),
          ListTile(
            title: Text(
              "Yash Sharma",
              style: TextStyle(fontSize: 16),
            ),
            trailing: Icon(
              Icons.chat_bubble_outline_rounded,
              size: 18,
            ),
          ),
          ListTile(
            title: Text(
              "Stanley Gabriel",
              style: TextStyle(fontSize: 16),
            ),
            trailing: Icon(
              Icons.chat_bubble_outline_rounded,
              size: 18,
            ),
          ),
          ListTile(
            title: Text(
              "Shubham Sharma",
              style: TextStyle(fontSize: 16),
            ),
            trailing: Icon(
              Icons.chat_bubble_outline_rounded,
              size: 18,
            ),
          ),
          ListTile(
            title: Text(
              "Pulkit Gupta",
              style: TextStyle(fontSize: 16),
            ),
            trailing: Icon(
              Icons.chat_bubble_outline_rounded,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
