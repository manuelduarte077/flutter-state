part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class ActivateUser extends UserEvent {
  final User user;

  ActivateUser({required this.user});
}

class ChangeUserName extends UserEvent {
  final String userName;

  ChangeUserName({required this.userName});
}

class AddSkills extends UserEvent {
  final String skills;

  AddSkills({required this.skills});
}

class DeleteUser extends UserEvent {}
