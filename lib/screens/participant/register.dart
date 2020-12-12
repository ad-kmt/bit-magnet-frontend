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
            TeamCard(),
          ],
        ),
      ),
    );
  }
}
