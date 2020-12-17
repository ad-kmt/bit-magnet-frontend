import 'package:bit_magnet/components/side_bar.dart';
import 'package:bit_magnet/screens/author/invitations.dart';
import 'package:bit_magnet/screens/author/problem_list.dart';
import 'package:bit_magnet/screens/login/login.dart';
import 'package:bit_magnet/screens/participant/forum.dart';
import 'package:bit_magnet/screens/participant/hackathon_list.dart';
import 'package:bit_magnet/screens/participant/home.dart';
import 'package:bit_magnet/styles/constants.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';

class PSideBar extends PreferredSize {
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
            leading: Icon(Icons.home, color: kSideBarIconColor),
            title: Text(
              'Home',
              style: kSideBarTextStyle,
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return PHome();
                },
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.code, color: kSideBarIconColor),
            title: Text(
              'Hackathons',
              style: kSideBarTextStyle,
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return PHome();
                },
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.trending_up, color: kSideBarIconColor),
            title: Text(
              'Stats',
              style: kSideBarTextStyle,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.people, color: kSideBarIconColor),
            title: Text(
              'Teams',
              style: kSideBarTextStyle,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.people, color: kSideBarIconColor),
            title: Text(
              'Forum',
              style: kSideBarTextStyle,
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ForumScreen();
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
