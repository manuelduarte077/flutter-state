import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state/models/user.dart';
import 'package:flutter_state/screens/bloc/user/usuario_cubit.dart';
import 'package:flutter_state/screens/singleton/screens_2.dart';

class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const BodyScaffold(),
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

class BodyScaffold extends StatelessWidget {
  const BodyScaffold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsuariosCubit, UsuarioState>(
      builder: (context, state) {
        switch (state.runtimeType) {
          case UsuarioInitial:
            return const Center(
              child: Text(
                'No hay información del usuario',
                style: TextStyle(fontSize: 20),
              ),
            );
            break;

          case UsuarioActivo:
            return UserInformacion(
              user: (state as UsuarioActivo).user,
            );
            break;

          default:
            return const Center(
              child: Text('No hay usuario'),
            );
        }
      },
    );
  }
}

class UserInformacion extends StatelessWidget {
  User user;
  UserInformacion({
    Key? key,
    required this.user,
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
          const Padding(
            padding: EdgeInsets.only(bottom: 30, top: 10),
            child: Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage("https://picsum.photos/200/300"),
                radius: 50,
              ),
            ),
          ),
          const Text(
            'General Information',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(),
          ListTile(
            title: Text("Name: ${user.name}",
                style: const TextStyle(fontSize: 18)),
          ),
          ListTile(
            title: Text("User Name: ${user.userName}",
                style: const TextStyle(fontSize: 18)),
          ),
          const Text(
            'Profession',
            style: TextStyle(fontSize: 18),
          ),
          const Divider(),
          ListTile(
            title:
                Text("${user.profesion}", style: const TextStyle(fontSize: 18)),
            subtitle: const Text('IOs, Android and Flutter'),
          ),
          const Text(
            'Skills',
            style: TextStyle(fontSize: 18),
          ),
          const Divider(),
          ListTile(
            title: Text("${user.skills?.join(', ')}",
                style: const TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }
}
