import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];
  const Listview2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Tipo 2'),
          /*elevation: 0,
          backgroundColor: Colors.indigo,*/
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, i) => ListTile(
            title: Text(options[i]),
            trailing:
                const Icon(Icons.arrow_forward_ios, color: AppTheme.primary),
            onTap: () {
              final game = options[i];
            },
          ),
          separatorBuilder: (context, index) => const Divider(),
        ));
  }
}
