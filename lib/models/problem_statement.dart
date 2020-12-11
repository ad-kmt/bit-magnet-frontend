class ProblemStatement {
  final int id;
  final String title;
  final String description;
  final String department;

  ProblemStatement(this.id, this.title, this.description, this.department);

  @override
  String toString() {
    return 'ProblemStatement{id: $id, title: $title, description: $description, department: $department}';
  }
}
