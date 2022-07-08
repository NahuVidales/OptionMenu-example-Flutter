import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AlertScreen',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AlertScreen'),
        ),
        body: const Center(
          child: Text('AlertScreen'),
        ),
      ),
    );
  }
}
