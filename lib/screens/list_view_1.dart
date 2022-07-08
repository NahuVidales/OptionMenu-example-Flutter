import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  ListView1Screen({super.key});
  final jueguitos = ['spiderman', 'GTA V', 'ASSASINS'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView1Screen'),
      ),
      body: ListView(
        children: [
          ...jueguitos
              .map(
                (game) => ListTile(
                  title: Text(game),
                  trailing: const Icon(Icons.access_alarm_outlined),
                ),
              )
              .toList()
        ],
      ),
    );
  }
}
