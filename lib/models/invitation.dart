import 'package:bit_magnet/models/hackathon.dart';

class IInvitation {
  IInvitation(this.id, this.host, this.hackathon);

  final String id;
  final String host;
  final IHackathon hackathon;

  @override
  String toString() {
    return 'IInvitation{host: $host, hackathon: ${hackathon.title}, id: $id}';
  }
}
