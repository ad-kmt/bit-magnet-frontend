import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';

//TEXT STYLES

var kBlueTitle = TextStyle(color: Palette.blue, fontSize: 28, fontWeight: FontWeight.w600);

var kBlackTitle = TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.w600);

var customHeplerText = TextStyle(color: Colors.blueGrey, fontSize: 12);

var customLabel = TextStyle(color: Colors.black87, fontSize: 16, fontWeight: FontWeight.w500);
var smallItalic = TextStyle(color: Colors.black87, fontSize: 13, fontStyle: FontStyle.italic, fontWeight: FontWeight.w400);

var kBlackSubTitle =
    TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600);

var kGreyInfo = TextStyle(
    color: Palette.lightGreyIcon, fontSize: 16, fontWeight: FontWeight.normal);

var kDarkBlueSubHeading = TextStyle(
    color: Palette.darkBlue, fontSize: 20.0, fontWeight: FontWeight.w600);

var kDarkBlueSubHeading22 = TextStyle(
    color: Palette.darkBlue, fontSize: 20.0, fontWeight: FontWeight.w600);

//BOX STYLES

var kGradientBoxDecoration = BoxDecoration(
  gradient: kGradientPurpleCream,
  borderRadius: BorderRadius.all(Radius.circular(20)),
);

var kCurvedBoxDecoration = BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(20)),
);

var kGradientFlatBoxDecoration = BoxDecoration(
  gradient: kGradientPurpleCream,
);

var kBoxShadowGrey = BoxShadow(
  color: Color(0x29000000),
  blurRadius: 6.0, // soften the shadow
  spreadRadius: 0.0, //extend the shadow
  offset: Offset(
    0, // Move to right 10  horizontally
    3, // Move to bottom 10 Vertically
  ),
);

//GRADIENTS

var kGradientPurpleCream = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Palette.purpleGradient, Palette.creamGradient]);
