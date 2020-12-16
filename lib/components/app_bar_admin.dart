import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';

class MAppBar extends PreferredSize {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
                height: 25, child: Image(image: AssetImage("images/logo.png"))),
            Text(
              "admin",
              style: TextStyle(
                color: Palette.greenWidget,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
