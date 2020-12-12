import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/team_card.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AxessAppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Problem:",
              style: kBlackSubTitle,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Palette.lightGreyContainer,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
            ),
            Text(
              "You hava x teams:",
              style: kBlackSubTitle,
            ),
            Text(
              "Select one to proceed",
              style: kGreyInfo,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: [
                  Expanded(
                    flex: 10,
                    child: Container(
                      height: 2.0,
                      color: Palette.darkBlue,
                    ),
                  ),
                  CircleAvatar(
                    child: Icon(
                      Icons.add,
                      size: 30,
                      color: Colors.white,
                    ),
                    backgroundColor: Palette.greenWidget,
                    radius: 24,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 2.0,
                      color: Palette.darkBlue,
                    ),
                  ),
                ],
              ),
            ),
            TeamCard(),
          ],
        ),
      ),
    );
  }
}
