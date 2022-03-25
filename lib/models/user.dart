class User {
  final String name;
  final String userName;
  final String profesion;
  List skills;

  User({
    required this.name,
    required this.userName,
    required this.profesion,
    required this.skills,
  }) : assert(name != null);

  // Retorna una nueva instancia de User
  User copyWith({
    String? name,
    String? userName,
    String? profesion,
    List? skills,
  }) =>
      User(
        name: name ?? this.name,
        userName: userName ?? this.userName,
        profesion: profesion ?? this.profesion,
        skills: skills ?? this.skills,
      );
}
