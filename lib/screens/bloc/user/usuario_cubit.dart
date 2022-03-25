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
}
