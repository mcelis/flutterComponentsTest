import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: const [
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.photo_album_outlined,
                        color: AppTheme.primary),
                    title: Text('titulo'),
                    subtitle: Text(
                        'Eiusmod dolore ex fugiat occaecat Lorem adipisicing anim enim sint aliquip.'),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
