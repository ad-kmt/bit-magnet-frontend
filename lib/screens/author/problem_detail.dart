import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/buttons.dart';
import 'package:bit_magnet/models/problem_statement.dart';
import 'package:bit_magnet/screens/author/side_bar.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';

class AProblemDetail extends StatefulWidget {
  final IProblemStatement problem;

  const AProblemDetail(this.problem);

  @override
  _AProblemDetailState createState() => _AProblemDetailState();
}

class _AProblemDetailState extends State<AProblemDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AxessAppBar(),
        backgroundColor: Colors.white,
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
                        "${widget.problem.id}: ",
                        style: kBlackSubTitle,
                      ),
                      Text(
                        "${widget.problem.title}: ",
                        style: kBlackSubTitle,
                      ),
                    ],
                  ),
                ),
                Section(
                    "Challenge", widget.problem.description, Palette.greenText),
                Section("Who we're solving for", widget.problem.department,
                    Colors.black),
                Section(
                  "Benefits",
                  widget.problem.benefits,
                  Colors.black,
                ),
                Section(
                  "Success Criteria",
                  widget.problem.successCriteria,
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
                  children: List.generate(widget.problem.technologies.length,
                      (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Text(
                        widget.problem.technologies[index],
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
