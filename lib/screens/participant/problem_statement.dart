import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/buttons.dart';
import 'package:bit_magnet/models/problem_statement.dart';
import 'package:bit_magnet/models/sample_objects.dart';
import 'package:bit_magnet/screens/participant/register.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';

class ProblemStatement extends StatelessWidget {
  final IProblemStatement problem;

  const ProblemStatement(this.problem);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AxessAppBar(),
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomAppBar(
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
                        "${problem.id}: ",
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
                Section("Challenge", problem.description, Palette.greenText),
                Section(
                    "Who we're solving for", problem.department, Colors.black),
                Section(
                  "Benefits",
                  problem.benefits,
                  Colors.black,
                ),
                Section(
                  "Success Criteria",
                  problem.successCriteria,
                  Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Text(
                    "Suggested Technologies",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(problem.technologies.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Text(
                        problem.technologies[index],
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    );
                  }),
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
