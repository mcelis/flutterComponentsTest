import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 10,
      child: Column(children: [
        FadeInImage(
          image: NetworkImage(
              "https://img.freepik.com/premium-vector/autumn-mountains-landscape-with-tree-silhouettes-river-sunset_148087-293.jpg?w=2000"),
          placeholder: AssetImage('assets/jar-loading.gif'),
        )
      ]),
    );
  }
}
