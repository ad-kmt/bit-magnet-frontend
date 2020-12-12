import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/invitation_card.dart';
import 'package:bit_magnet/models/invitation.dart';
import 'package:bit_magnet/styles/palette.dart';
import 'package:flutter/material.dart';
import 'package:bit_magnet/models/sample_objects.dart';

class InvitationsList extends StatefulWidget {

  const InvitationsList({
    Key key,
  }) : super(key: key);

  _InvitationsListState createState() => _InvitationsListState();
}

class _InvitationsListState extends State<InvitationsList> {

  List<IInvitation> sampleIlist = SampleObjects.sampleIlist;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.centerRight,
          child: Image(image: AssetImage("images/logo.png")),
        ),
      ),
      backgroundColor: Palette.lightGreyBackground,
      body: Column(
        children: [
          for ( var invitation in sampleIlist ) InvitationCard(invitation)
        ],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

