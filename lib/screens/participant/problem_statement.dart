import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/buttons.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';

class ProblemStatement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AxessAppBar(),
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomAppBar(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: FlatGreenButton("Register"),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Row(
                    children: [
                      Text(
                        "0086: ",
                        style: kBlackSubTitle,
                      ),
                      Text(
                        "Problem name",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ),
                Section(
                    "Challenge",
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    Palette.greenText),
                Section("Who we're solving for", "RPBWM - Some Department",
                    Colors.black),
                Section(
                  "Benefits",
                  "Lorem ipsum",
                  Colors.black,
                ),
                Section(
                  "Success Criteria",
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
                  Colors.black,
                ),
                Section(
                  "Suggested Technology",
                  "React     Java     JavaScript",
                  Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Text(
                    "Benefactor",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Palette.lightGreyContainer,
                          child: Icon(
                            Icons.person,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Shreya Singh",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}

class Section extends StatelessWidget {
  final String heading;
  final String description;
  final Color headingColor;

  const Section(this.heading, this.description, this.headingColor);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Text(
            heading,
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w600, color: headingColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0),
          child: Text(
            description,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
