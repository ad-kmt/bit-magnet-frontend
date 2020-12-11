class Hackathon {
  Hackathon(
      this.title, this.startDate, this.endDate, this.location, this.spaceLeft);

  final String title;
  final String startDate;
  final String endDate;
  final String location;
  final int spaceLeft;

  @override
  String toString() {
    return 'Hackathon{title: $title, startDate: $startDate, endDate: $endDate, location: $location, spaceLeft: $spaceLeft}';
  }
}
