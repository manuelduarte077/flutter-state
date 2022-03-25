import 'package:flutter/material.dart';
import 'package:flutter_state/models/user.dart';
import 'package:flutter_state/screens/singleton/screens_2.dart';
import 'package:flutter_state/services/user_service.dart';

class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: userService.existeUsuario
          ? UserInformacion(usuario: userService.userInfo)
          : const Center(
              child: Text('Not user found'),
            ),
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

class UserInformacion extends StatelessWidget {
  final User usuario;
  const UserInformacion({
    Key? key,
    required this.usuario,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'General Information',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(),
          ListTile(
            title: Text("Name: ${usuario.name}"),
          ),
          const Text(
            'Profession',
            style: TextStyle(fontSize: 18),
          ),
          const Divider(),
          const ListTile(
            title: Text('Mobile Developer'),
            subtitle: Text('IOs, Android and Flutter'),
          ),
          const Text(
            'Skills',
            style: TextStyle(fontSize: 18),
          ),
          const Divider(),
          const ListTile(
            title: Text('Flutter'),
            subtitle: Text('Flutter is a mobile application framework'),
          ),
          const ListTile(
            title: Text('Dart'),
            subtitle: Text('Dart is a programming language'),
          ),
          const ListTile(
            title: Text('Kotlin'),
            subtitle: Text('Kotlin is a programming language'),
          ),
          const ListTile(
            title: Text('Swift'),
            subtitle: Text('Swift is a programming language'),
          ),
        ],
      ),
    );
  }
}
