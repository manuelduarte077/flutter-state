import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state/bloc/user/user_bloc.dart';
import 'package:flutter_state/models/user.dart';

class FlutterBlocScreen2 extends StatelessWidget {
  const FlutterBlocScreen2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userBloc = BlocProvider.of<UserBloc>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 2'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            child: const Text('Establecer Usuario',
                style: TextStyle(color: Colors.white)),
            color: Colors.blue,
            onPressed: () {
              final user = User(
                name: 'Juan',
                userName: 'manuelduarte099',
                profesion: 'Software Engineer',
                skills: ['Dart', 'Flutter', 'Kotlin', 'Swift'],
              );

              userBloc.add(
                ActivateUser(user: user),
              );
            },
          ),
          MaterialButton(
              child: const Text('Cambiar UserName',
                  style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {
                userBloc.add(
                  ChangeUserName(userName: 'manuelduarte077'),
                );
              }),
          MaterialButton(
              child: const Text('Añadir Skills',
                  style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {
                userBloc.add(
                  AddSkills(skills: "PHP"),
                );
              }),
        ],
      )),
    );
  }
}
