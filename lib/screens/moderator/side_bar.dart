import 'package:bit_magnet/components/side_bar.dart';
import 'package:bit_magnet/screens/author/invitations.dart';
import 'package:bit_magnet/screens/author/problem_list.dart';
import 'package:bit_magnet/screens/login/login.dart';
import 'package:bit_magnet/screens/moderator/problem_statements_all.dart';
import 'package:bit_magnet/screens/participant/hackathon_list.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';

import 'hackathon_list.dart';

class MSideBar extends PreferredSize {
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
          SideBarHeader(),
          ListTile(
            leading: Icon(Icons.code, color: kSideBarIconColor),
            title: Text(
              'Hackathons',
              style: kSideBarTextStyle,
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return MHackathonList();
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
                  return MProblemList();
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
            onTap: () {},
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
