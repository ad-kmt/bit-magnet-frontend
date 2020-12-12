class IProblemStatement {
  final String id;
  final String title;
  final String description;
  final String department;
  final String benefits;
  final String successCriteria;
  final List<String> technologies;

  IProblemStatement(this.id, this.title, this.description, this.department,
      this.benefits, this.successCriteria, this.technologies);

  @override
  String toString() {
    return 'ProblemStatement{id: $id, title: $title, description: $description, department: $department}';
  }
}
