import 'package:flutter/material.dart';

class MainValueNotifier extends StatelessWidget {
  const MainValueNotifier({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('MainValueNotifier'),
      ),
    );
  }
}
