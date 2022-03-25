import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'productos_state.dart';

class ProductosCubit extends Cubit<ProductosState> {
  ProductosCubit() : super(ProductosInitial());
}
