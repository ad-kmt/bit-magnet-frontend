class IProblemStatement {
  static String defaultBenefits = "Lorem ipsum";
  static String defaultSuccessCriteria =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod";

  final String id;
  final String title;
  final String description;
  final String department;
  String benefits = defaultBenefits;
  String successCriteria = defaultSuccessCriteria;
  final List<String> technologies;

  IProblemStatement(this.id, this.title, this.description, this.department,
      this.benefits, this.successCriteria, this.technologies);

  IProblemStatement.fromBackend(this.id, this.title, this.description,
      this.department, this.technologies);

  @override
  String toString() {
    return 'ProblemStatement{id: $id, title: $title, description: $description, department: $department}';
  }
}
