import 'package:flutter/material.dart';

class MainChangeNotifier extends StatelessWidget {
  const MainChangeNotifier({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('MainChangeNotifier'),
      ),
    );
  }
}
