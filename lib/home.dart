import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Indefinido(),
    );
  }
}

class Indefinido extends StatelessWidget {
  const Indefinido({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
