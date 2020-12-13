import 'package:bit_magnet/components/app_bar.dart';
import 'package:bit_magnet/components/invitation_card.dart';
import 'package:bit_magnet/models/invitation.dart';
import 'package:bit_magnet/screens/author/problem_submit.dart';
import 'package:bit_magnet/screens/author/side_bar.dart';
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
      appBar: AxessAppBar(),
      backgroundColor: Palette.lightGreyBackground,
      body: Column(
        children: [
          for ( var invitation in sampleIlist ) 
          GestureDetector( onTap: () { Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => ProblemSubmit(),
        )); },
                child: InvitationCard(invitation)
              ), 
        ],
      ),
      drawer: ASideBar(),
    );
  }
}

