import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';

//TEXT STYLES

var kBlueTitle = TextStyle(color: Palette.blue, fontSize: 28, fontWeight: FontWeight.w600);

var kBlackTitle = TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.w600);

var customHeplerText = TextStyle(color: Colors.blueGrey, fontSize: 12);

var customLabel = TextStyle(color: Colors.black87, fontSize: 16, fontWeight: FontWeight.w500);

var kDarkBlueSubHeading = TextStyle(
    color: Palette.darkBlue, fontSize: 20.0, fontWeight: FontWeight.w600);

//BOX STYLES

var kGradientBoxDecoration = BoxDecoration(
  gradient: kGradientPurpleCream,
  borderRadius: BorderRadius.all(Radius.circular(20)),
);

var kGradientFlatBoxDecoration = BoxDecoration(
  gradient: kGradientPurpleCream,
);

//GRADIENTS

var kGradientPurpleCream = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Palette.purpleGradient, Palette.creamGradient]);
