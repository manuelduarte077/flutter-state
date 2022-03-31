import 'package:flutter/material.dart';

class MainStateful extends StatelessWidget {
  const MainStateful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const HomeStateFull(),
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
          onPressed: () {},
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
    return Container();
  }
}
