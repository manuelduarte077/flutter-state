import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'productos_event.dart';
part 'productos_state.dart';

class ProductosBloc extends Bloc<ProductosEvent, ProductosState> {
  ProductosBloc() : super(ProductosInitial()) {
    on<ProductosEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
