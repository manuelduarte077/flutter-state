import 'package:flutter/material.dart';
import 'package:flutter_state/screens/singleton/screens_1.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Statet'),
        ),
        body: const HomeScreen1(),
      ),
    );
  }
}
