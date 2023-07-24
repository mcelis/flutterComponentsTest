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
            CustomCardType2()
          ],
        ));
  }
}
