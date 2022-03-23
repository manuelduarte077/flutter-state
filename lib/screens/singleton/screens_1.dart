import 'package:flutter/material.dart';
import 'package:flutter_state/screens/singleton/screens_2.dart';

class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UserInfo(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Screen2(),
            ),
          );
        },
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'General Information',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
          ListTile(
            title: Text('Name'),
            subtitle: Text('John Doe'),
          ),
          Text(
            'Profession',
            style: TextStyle(fontSize: 18),
          ),
          Divider(),
          ListTile(
            title: Text('Mobile Developer'),
            subtitle: Text('IOs, Android and Flutter'),
          ),
          Text(
            'Skills',
            style: TextStyle(fontSize: 18),
          ),
          Divider(),
          ListTile(
            title: Text('Flutter'),
            subtitle: Text('Flutter is a mobile application framework'),
          ),
          ListTile(
            title: Text('Dart'),
            subtitle: Text('Dart is a programming language'),
          ),
          ListTile(
            title: Text('Kotlin'),
            subtitle: Text('Kotlin is a programming language'),
          ),
          ListTile(
            title: Text('Swift'),
            subtitle: Text('Swift is a programming language'),
          ),
        ],
      ),
    );
  }
}
