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
          DrawerHeader(
            child: Image(image: AssetImage("images/logo.png")),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home,
            color: Colors.black),
            title: Text('Home'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ProblemList();
                  },
                )
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications,
            color: Colors.black),
            title: Text('Notifications'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return InvitationsList();
                  },
                )
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.logout,
            color: Colors.black),
            title: Text('Logout'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                )
              );
            },
          ),
        ],
      ),
    );
  }
}
