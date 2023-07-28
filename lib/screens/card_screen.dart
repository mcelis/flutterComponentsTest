import 'package:fl_components/widgets/custom_card_type_2.dart';
import 'package:flutter/material.dart';

import '../widgets/custon_card_type_1.dart';

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
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(
                imageUrl:
                    'https://img.freepik.com/premium-vector/autumn-mountains-landscape-with-tree-silhouettes-river-sunset_148087-293.jpg?w=2000',
                name: 'Un hermoso paisaje'),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000',
              name: null,
            ),
            SizedBox(height: 10),
            CustomCardType2(
                imageUrl:
                    'https://img.freepik.com/free-photo/forest-landscape_71767-127.jpg?w=2000',
                name: 'Un bonito nevado'),
            SizedBox(height: 100),
          ],
        ));
  }
}
