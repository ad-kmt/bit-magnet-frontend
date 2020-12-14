import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';

class AxessAppBar extends PreferredSize {
  @override
  Size get preferredSize => Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(
        color: Palette.blue, //change your color here
      ),
      title: Container(
        alignment: Alignment.centerRight,
        child: Image(image: AssetImage("images/logo.png")),
      ),
    );
  }
}
