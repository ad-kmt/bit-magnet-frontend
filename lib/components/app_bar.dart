import 'package:flutter/material.dart';

class AxessAppBar extends PreferredSize {
  @override
  Size get preferredSize => Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Icon(
        Icons.menu,
        color: Color(0xff0780B4),
      ),
      title: Container(
        alignment: Alignment.centerRight,
        child: Image(image: AssetImage("images/logo.png")),
      ),
    );
  }
}
