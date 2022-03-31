import 'package:flutter/material.dart';

class MainStateful extends StatelessWidget {
  const MainStateful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('MainStateful'),
      ),
    );
  }
}
