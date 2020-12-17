import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/buttons.dart';
import 'package:bit_magnet/models/problem_statement.dart';
import 'package:bit_magnet/models/sample_objects.dart';
import 'package:bit_magnet/models/solution.dart';
import 'package:bit_magnet/screens/author/side_bar.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';

import 'card.dart';

class SolutionsView extends StatefulWidget {
  @override
  _SolutionsViewState createState() => _SolutionsViewState();
}

class _SolutionsViewState extends State<SolutionsView> {
  final List<ISolution> solutionList = SampleObjects.sampleSolutions;

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
                  child: Column(
                    children: [
                      // Text(
                      //   "${"HC45"}: ",
                      //   style: kBlackSubTitle,
                      // ),
                      Text(
                        "${"Mobile Money Challenge"}: ",
                        style: kBlackSubTitle,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: List.generate(solutionList.length, (index) {
                    return CardWidget(solutionList[index]);
                  }),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Text(
                    "Still have question?..",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 20),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration:
                          const BoxDecoration(color: Colors.white),
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Write us here...'),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        flex: 4,
                      ),
                      Expanded(
                        child: Container(
                          decoration:
                          const BoxDecoration(color: Colors.white),
                          child: new GestureDetector(
                            // SizedBox()
                            child: Container(
                                width: 40.0,
                                height: 30.0,
                                child: new Tab(
                                    icon: new Image.asset(
                                        "images/send.png"))),
                            onTap: () {
                              print("share cliked");
                            },
                          ),
                        ),
                        flex: 1,
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ));
  }
}

