// Administar el state de la pantalla de usuario

part of 'usuario_cubit.dart';

// Manejar los etados inmutables

// DEfinir el tipo de stado inmutable

// Crear una clase abstracta

@immutable
abstract class UsuarioState {}

// Estado inicial
class UsuarioInitial extends UsuarioState {
  final existeUsuario = false;
}
