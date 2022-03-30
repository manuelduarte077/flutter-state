part of 'user_bloc.dart';

@immutable
abstract class UserState {
  final bool existUser;
  final User? user;

  const UserState({
    this.existUser = false,
    required this.user,
  });
}

class UserInitState extends UserState {
  UserInitState() : super(existUser: false, user: null);
}

class UserSetState extends UserState {
  final User userNew;

  const UserSetState(this.userNew) : super(existUser: true, user: userNew);
}
