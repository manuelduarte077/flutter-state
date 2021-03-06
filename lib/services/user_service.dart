import 'package:flutter_state/models/user.dart';

class _UserService {
  late User _userInfo;

  User get userInfo => _userInfo;

  // Para saber si el usuario esta logeado
  bool get existeUsuario => (_userInfo != null);

  // Cargar el usuario
  void getAllUser(User usuario) {
    _userInfo = usuario;
  }
}

final userService = _UserService();
