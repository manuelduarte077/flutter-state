import 'package:bloc/bloc.dart';
import 'package:flutter_state/models/user.dart';
import 'package:meta/meta.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitState()) {
    on<ActivateUser>((event, emit) => emit(UserSetState(event.user)));
    on<DeleteUser>((event, emit) => emit(UserInitState()));

    // Cambiar el userName
    on<ChangeUserName>((event, emit) {
      if (!state.existUser) return;
      emit(UserSetState(state.user!.copyWith(userName: event.userName)));
    });

    // Agregar skills
    on<AddSkills>((event, emit) {
      if (!state.existUser) return;
      emit(UserSetState(state.user!.copyWith(skills: [
        ...state.user!.skills,
        event.skills,
      ])));
    });
  }
}
