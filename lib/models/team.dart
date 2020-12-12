import 'package:bit_magnet/models/participant.dart';

class ITeam {
  final List<IParticipant> participants;
  final IParticipant leader;
  final String name;

  ITeam(this.participants, this.leader, this.name);
}
