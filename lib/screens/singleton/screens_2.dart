import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state/models/user.dart';
import 'package:flutter_state/screens/bloc/user/usuario_cubit.dart';

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
              elevation: 0,
              color: Colors.indigo,
              child: const Text(
                'Establecer usuario',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                final newUser = User(
                  name: "Manuel Duarte",
                  profesion: ["Desarrollador", "Diseñador"],
                  skills: ["Flutter", "Dart", "Kotlin", "Swift"],
                );
                context.read<UsuariosCubit>().seleccionarUsuario(newUser);
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
