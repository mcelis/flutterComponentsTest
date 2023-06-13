import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes flutter'),
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: const Icon(Icons.access_time_filled_sharp),
                  title: const Text('Nombre Ruta'),
                  onTap: () {
                    //final route = MaterialPageRoute(
                    //builder: (context) => const ListviewScreen());
                    //Navigator.push(context, route);
                    Navigator.pushNamed(context, 'card_screen');
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: 10));
  }
}
