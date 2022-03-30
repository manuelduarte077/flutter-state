import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state/screens/bloc/productos/productos_cubit.dart';
import 'package:flutter_state/screens/bloc/user/usuario_cubit.dart';
import 'package:flutter_state/screens/flutter_bloc/flutter_bloc_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UsuariosCubit>(
          create: (context) => UsuariosCubit(),
        ),
        BlocProvider<ProductosCubit>(
          create: (context) => ProductosCubit(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        debugShowCheckedModeBanner: false,
        home: const FlutterBlocScreen(),
      ),
    );
  }
}
