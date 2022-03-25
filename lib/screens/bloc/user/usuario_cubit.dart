// usar meta en vez de material, ese solo nos trae los metatags

import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_state/models/user.dart';
part 'usuario_state.dart';

class UsuariosCubit extends Cubit<UsuarioState> {
  // Llamar el estado inicial
  UsuariosCubit() : super(UsuarioInitial());

  //  Metodo para cambiar el estado
  void seleccionarUsuario(User user) {
    emit(UsuarioActivo(user)); // Cambiar el estado
  }

  // Cambiar userName
  void cambiarUserName(String userName) {
    final currebtState = state;
    if (currebtState is UsuarioActivo) {
      final newUser = currebtState.user.copyWith(userName: "userName");
      emit(UsuarioActivo(newUser));
    }
  }

  //  Agregar una nueva profesion
  void agregarProfesion() {
    final currentState = state;
    if (currentState is UsuarioActivo) {
      final newSkills = [
        ...currentState.user.skills,
        "Skills: ${currentState.user.skills.length + 1}",
      ];

      final newUser = currentState.user.copyWith(skills: newSkills);
      emit(UsuarioActivo(newUser));
    }
  }

  // Borrar el usuario
  void borrarUsuario() {
    emit(UsuarioInitial());
  }
}
