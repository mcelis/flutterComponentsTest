import 'package:fl_components/routes/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuoptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes flutter'),
          //elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(
                    menuOptions[index].icon,
                    color: Colors.indigo,
                  ),
                  title: Text(menuOptions[index].name),
                  onTap: () {
                    //final route = MaterialPageRoute(
                    //builder: (context) => const ListviewScreen());
                    //Navigator.push(context, route);
                    Navigator.pushNamed(context, menuOptions[index].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOptions.length));
  }
}
