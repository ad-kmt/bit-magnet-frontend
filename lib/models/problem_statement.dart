class IProblemStatement {
  static String defaultBenefits = "1) Predict client pricing based on decisions taken in the past and forecasted client usage, 2) Minimizing risks such as underpricing/overpricing based on analysis";
  static String defaultSuccessCriteria =
      "A working prototype which will be demonstrated to Bill winters that can better identity clients with the need of this product to improve Client responses";

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
