part of 'productos_cubit.dart';

@immutable
abstract class ProductosState {}

class ProductosInitial extends ProductosState {
  // Estado inicial
  final List<String> productos = [];
}
