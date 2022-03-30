import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state/bloc/user/user_bloc.dart';
import 'package:flutter_state/models/user.dart';
import 'package:flutter_state/screens/flutter_bloc/flutter_bloc_screen2.dart';
import 'package:flutter_state/screens/flutter_bloc/product.dart';

class FlutterBlocScreen extends StatelessWidget {
  const FlutterBlocScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 1'),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_forever_outlined),
            onPressed: () {
              BlocProvider.of<UserBloc>(context).add(DeleteUser());
            },
          ),
        ],
      ),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (_, state) {
          return state.existUser
              ? InformacionUsuario(user: state.user!)
              : const Center(
                  child: Text('No existe usuario'),
                );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.accessibility_new),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FlutterBlocScreen2(),
            ),
          );
        },
      ),
    );
  }
}

class InformacionUsuario extends StatelessWidget {
  final User user;

  const InformacionUsuario({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('General',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Divider(),
          ListTile(title: Text('Nombre: ${user.name}')),
          ListTile(title: Text('UserName: ${user.userName}')),
          const Text('Profession',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ListTile(title: Text('Possicion: ${user.profesion} ')),
          const Divider(),
          const Text('Skills',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ...user.skills
              .map(
                (skill) => ListTile(
                    title: Text(skill), trailing: const Icon(Icons.check)),
              )
              .toList(),
          const SizedBox(height: 20),
          TextButton(
            child: const Text('Product'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductCard(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
