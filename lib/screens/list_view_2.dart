import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({super.key});
  // ignore: avoid_field_initializers_in_const_classes
  final jueguitos = const ['spiderman', 'GTA V', 'ASSASINS'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: const Text('ListView2Screen'),
      ),
      body: ListView.separated(
        itemCount: jueguitos.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(jueguitos[index]),
          trailing: const Icon(Icons.alternate_email_outlined),
          onTap: () => const Text('Hola'),
        ),
        separatorBuilder: (__, _) => const Divider(),
      ),
    );
  }
}
