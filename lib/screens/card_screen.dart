import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/app_theme.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Card Widget'),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          children: [
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.accessible,
                      color: AppTheme.primary,
                    ),
                    title: Text('Soy el titulo'),
                    subtitle: Text(
                        'Qui ea deserunt quis occaecat elit id nulla anim.Incididunt ut aliquip mollit consectetur magna. Deserunt non minim nulla irure ea aliquip minim. Qui consectetur anim adipisicing sint labore non proident deserunt ut sit sint excepteur pariatur. Reprehenderit et non sint id ipsum et non exercitation magna. Laboris anim commodo eiusmod laboris reprehenderit laboris Lorem ut. Mollit quis enim laboris nostrud eiusmod.'),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
