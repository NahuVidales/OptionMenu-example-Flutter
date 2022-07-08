import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CardScreen',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('CardScreen'),
        ),
        body: const Center(
          child: Text('CardScreen'),
        ),
      ),
    );
  }
}
