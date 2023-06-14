import 'package:flutter/material.dart';

class CubitCounterScreen extends StatelessWidget {
  const CubitCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cubits'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_outlined),
            onPressed: () {},
          )
        ],
      ),
      body: const Center(
        child: Text(''),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
            label: const Text('+3'),
            onPressed: () {},
          ),

          /// Espacio entre los floating buttons
          const SizedBox(height: 10),
          FloatingActionButton.extended(
            label: const Text('+2'),
            onPressed: () {},
          ),
          const SizedBox(height: 10),

          FloatingActionButton.extended(
            label: const Text('+1'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
