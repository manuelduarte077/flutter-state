import 'package:flutter/material.dart';
import 'package:flutter_state/data.dart';

class MyInheritedWidget extends InheritedWidget {
  const MyInheritedWidget({
    required Widget child,
    required this.onThemeChanged,
    Key? key,
  }) : super(key: key, child: child);

  // Crear un coolback para comunicar el widget con el resto de la aplicación
  final VoidCallback onThemeChanged;

// Creamos un metodo para poder acceder al MyInheritedWidget desde otro widget
  static MyInheritedWidget of(BuildContext context) =>
      context.findAncestorWidgetOfExactType<MyInheritedWidget>()!;

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) => false;
}

class MainStateful extends StatefulWidget {
  const MainStateful({Key? key}) : super(key: key);

  @override
  State<MainStateful> createState() => _MainStatefulState();
}

class _MainStatefulState extends State<MainStateful> {
  bool isDark = true; // false = light, true = dark

  @override
  Widget build(BuildContext context) {
    return MyInheritedWidget(
      onThemeChanged: () {
        setState(() {
          isDark = !isDark;
        });
      },
      child: MaterialApp(
        // Cambiando el tema de la aplicación  (light/dark)
        theme: isDark
            ? ThemeData.dark()
            : ThemeData.light(), // ThemeData.dark() is the default
        home: const HomeStateFull(),
      ),
    );
  }
}

class HomeStateFull extends StatefulWidget {
  const HomeStateFull({Key? key}) : super(key: key);

  @override
  State<HomeStateFull> createState() => _HomeStateFullState();
}

class _HomeStateFullState extends State<HomeStateFull> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const MyAppBar(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Check Box'),
                  Checkbox(
                    value: true,
                    activeColor: Colors.pink,
                    onChanged: (val) {},
                  ),
                ],
              ),
            ),
            const Spacer(),
            MaterialButton(
              color: Theme.of(context).splashColor,
              child: const Text('Stateful Widget'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => const FutureStateful(),
                ));
              },
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Stateful'),
      actions: [
        IconButton(
          onPressed: () {
            MyInheritedWidget.of(context).onThemeChanged();
          },
          icon: const Icon(Icons.light_mode),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class FutureStateful extends StatefulWidget {
  const FutureStateful({Key? key}) : super(key: key);

  @override
  State<FutureStateful> createState() => _FutureStatefulState();
}

class _FutureStatefulState extends State<FutureStateful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FutureBuilder -  Stateful"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(),
              ),
              FutureBuilder<List<String>>(
                future: getCourses(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    if (snapshot.hasData) {
                      final data = snapshot.data!;
                      return ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: data.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(data[index]),
                          );
                        },
                      );
                    } else {
                      return const Center(
                        child: Text("No hay datos"),
                      );
                    }
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
