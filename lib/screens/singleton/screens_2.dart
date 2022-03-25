import 'package:flutter/material.dart';
import 'package:flutter_state/models/user.dart';
import 'package:flutter_state/services/user_service.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: const Text(
                'Add user',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                final user = User(name: 'John Doe');
                userService.getAllUser(user);
              },
            ),
            MaterialButton(
              elevation: 0,
              color: Colors.indigo,
              child: const Text(
                'Change Profession',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
            MaterialButton(
              elevation: 0,
              color: Colors.indigo,
              child: const Text(
                'Add user',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
            MaterialButton(
              elevation: 0,
              color: Colors.indigo,
              child: const Text(
                'Skills',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
