import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state/models/user.dart';
import 'package:flutter_state/screens/bloc/user/usuario_cubit.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userCubit = context.read<UsuariosCubit>();

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
                  userName: "manuelduarte077",
                  profesion: "Mobile Developer",
                  skills: ["Flutter", "Dart", "Kotlin", "Swift"],
                );
                userCubit.seleccionarUsuario(newUser);
              },
            ),
            MaterialButton(
              elevation: 0,
              color: Colors.indigo,
              child: const Text(
                'Change UserName',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                userCubit.cambiarUserName("manuelduarte099");
              },
            ),
            MaterialButton(
              elevation: 0,
              color: Colors.indigo,
              child: const Text(
                'Add Skills',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                userCubit.agregarProfesion();
              },
            ),
          ],
        ),
      ),
    );
  }
}
