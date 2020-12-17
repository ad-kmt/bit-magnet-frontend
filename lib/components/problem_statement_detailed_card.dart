import 'package:bit_magnet/models/problem_statement.dart';
import 'package:bit_magnet/screens/participant/problem_detail.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';

class ProblemStatementDetailedCard extends StatelessWidget {
  final IProblemStatement problemStatement;
  final dynamic problemDetailScreen;

  const ProblemStatementDetailedCard(
      this.problemStatement, this.problemDetailScreen);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return problemDetailScreen;
            },
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(28, 16, 16, 16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [kBoxShadowGrey],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(28),
                  topRight: Radius.circular(28),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${problemStatement.id}: ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w900),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        problemStatement.title,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(28, 16, 16, 16),
              decoration: BoxDecoration(
                color: Palette.darkBlue,
                boxShadow: [kBoxShadowGrey],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(28),
                  bottomRight: Radius.circular(28),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    problemStatement.department,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        StatusSymbol("Unresolved", Palette.bluishGrey),
                        StatusSymbol("1 Hackathon", Palette.blue),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StatusSymbol extends StatelessWidget {
  final String statusText;
  final Color backgroundColor;

  StatusSymbol(this.statusText, this.backgroundColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
      child: Text(
        statusText,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
