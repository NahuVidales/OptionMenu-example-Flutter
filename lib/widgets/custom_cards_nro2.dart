
import 'package:flutter/material.dart';

class CustomCardsNro2 extends StatelessWidget {
  const CustomCardsNro2({
    super.key,
    required this.imageUrl,
    required this.descript,
  });
  final String imageUrl;
  final String descript;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/loading-cargando.gif'),
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(seconds: 10),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Text(descript),
          )
        ],
      ),
    );
  }
}
