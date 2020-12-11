import 'package:bit_magnet/models/invitation.dart';
import 'package:flutter/material.dart';

class InvitationCard extends StatelessWidget {
  final IInvitation invitationCard;

  const InvitationCard(this.invitationCard);
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(28, 16, 16, 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(28),
                topRight: Radius.circular(28),
              ),
            ),
            child: Row(
              children: [
                Text(
                  invitationCard.host.toString()+' is inviting you in '+invitationCard.hackathon.toString(),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
