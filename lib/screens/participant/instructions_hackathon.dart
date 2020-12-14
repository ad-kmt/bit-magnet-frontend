import 'package:bit_magnet/models/hackathon.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:flutter/material.dart';

class InstructionsHackathon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: kGradientBlue,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'How does it work?',
              style: kDarkBlueSubHeading22,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  IHackathon.instructions.length,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0, top: 4),
                            child: CircleAvatar(
                              radius: 18,
                              backgroundColor: Colors.white,
                              child: Text(
                                "${index + 1}",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff0087b9),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              IHackathon.instructions[index],
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                        ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
