import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardsNro1 extends StatelessWidget {
  const CustomCardsNro1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        ListTile(
          leading: Icon(
            Icons.accessible,
            color: AppTheme.primary,
          ),
          title: Text('Soy el titulo'),
          subtitle: Text(
            'Qui ea deserunt quis occaecat elit id nulla anim.Incididunt ut aliquip mollit consectetur magna. Deserunt non minim nulla irure ea aliquip minim. Qui consectetur anim adipisicing sint labore non proident deserunt ut sit sint excepteur pariatur. Reprehenderit et non sint id ipsum et non exercitation magna. Laboris anim commodo eiusmod laboris reprehenderit laboris Lorem ut. Mollit quis enim laboris nostrud eiusmod.',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Cancelar'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Okay'),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
