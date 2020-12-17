import 'package:bit_magnet/components/a_side_bar.dart';
import 'package:bit_magnet/components/m_side_bar.dart';
import 'package:bit_magnet/screens/author/home.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';

import '../login/login.dart';
import './problem_list.dart';
import 'invitations.dart';

class ASideBar extends PreferredSize {
  @override
  Size get preferredSize => Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          ASideBarHeader(),
          ListTile(
            leading: Icon(Icons.home, color: kSideBarIconColor),
            title: Text(
              'Home',
              style: kSideBarTextStyle,
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return AHome();
                },
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.build_rounded, color: kSideBarIconColor),
            title: Text(
              'Problem Statements',
              style: kSideBarTextStyle,
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return AProblemList();
                },
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications, color: kSideBarIconColor),
            title: Text(
              'Notifications',
              style: kSideBarTextStyle,
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return InvitationsList();
                },
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.logout, color: kSideBarIconColor),
            title: Text(
              'Logout',
              style: kSideBarTextStyle,
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return LoginScreen();
                },
              ));
            },
          ),
        ],
      ),
    );
  }
}
