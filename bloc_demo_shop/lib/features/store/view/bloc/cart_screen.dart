import 'package:bloc_demo_shop/features/store/store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final hasEmptyCart =
        context.select<StoreBloc, bool>((b) => b.state.cartIds.isEmpty);

    final cartProducts = context.select<StoreBloc, List<Product>>(
      (b) => b.state.products
          .where((product) => b.state.cartIds.contains(product.id))
          .toList(),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: hasEmptyCart
          ? const Center(
              child: Text('Your cart is empty'),
            )
          : ListView.builder(
              itemCount: cartProducts.length,
              itemBuilder: (context, index) {
                final product = cartProducts[index];
                return ListTile(
                  title: Text(product.title),
                  trailing: IconButton(
                    icon: const Icon(Icons.remove_circle_outline),
                    onPressed: () {
                      context.read<StoreBloc>().add(
                            StoreProductsRemovedFromCart(product.id),
                          );
                    },
                  ),
                );
              },
            ),
      floatingActionButton: hasEmptyCart
          ? null
          : FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.check),
            ),
    );
  }
}
