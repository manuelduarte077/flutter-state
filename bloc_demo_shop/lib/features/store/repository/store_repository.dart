import 'package:bloc_demo_shop/features/features.dart';
import 'package:dio/dio.dart';

class StoreRepository {
  final Dio _client = Dio(
    BaseOptions(
      baseUrl: 'https://fakestoreapi.com',
    ),
  );

  Future<List<Product>> getProducts() async {
    final response = await _client.get('/products');

    final proudcts = (response.data! as List<dynamic>)
        .map((e) => Product.fromJson(e as Map<String, dynamic>));

    print(proudcts.toList().length);

    return proudcts.toList();
  }
}
