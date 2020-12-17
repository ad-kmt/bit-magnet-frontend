class ISolution {
  ISolution(this._id, this.teamName, this.teamMember,this.leader, this.title, this.solutioDetail, this.accomplishment,this.techDetail, this.furtureScope, this.submitDate, this.upvotes, this.comments);
  final String _id;
  final String teamName;
  final List<String> teamMember;
  final String leader;

  final String title;
  final String solutioDetail;
  final String accomplishment;
  final String techDetail;
  final String furtureScope;
  final String submitDate;
  final int upvotes;
  final List<String> comments;
}
