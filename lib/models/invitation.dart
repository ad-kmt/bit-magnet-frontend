class IInvitation {
  IInvitation(this.id, this.host, this.hackathon);

  final String id;
  final String host;
  final String hackathon;

  @override
  String toString() {
    return 'IInvitation{host: $host, hackathon: $hackathon, id: $id}';
  }
}
