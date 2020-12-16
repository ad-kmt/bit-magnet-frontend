

import 'hackathon_basic_details.dart';

class IInvitation {
  IInvitation(this.id, this.host, this.hackathon);

  final String id;
  final String host;
  final IHackathonBasic hackathon;

  @override
  String toString() {
    return 'IInvitation{host: $host, hackathon: ${hackathon.title}, id: $id}';
  }
}
