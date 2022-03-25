class User {
  final String name;
  List<String>? profesion;
  List<String>? skills;

  User({
    required this.name,
    this.profesion,
    this.skills,
  }) : assert(name != null);
}
