class IParticipant {
  final String firstName;
  final String lastName;

  String fullName() {
    return firstName + " " + lastName;
  }

  IParticipant(this.firstName, this.lastName);
}
