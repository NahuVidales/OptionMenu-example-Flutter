import 'package:flutter/material.dart';

class CustomCardsNro2 extends StatelessWidget {
  final String ImageUrl;
  final String descript;
  const CustomCardsNro2(
      {super.key, required this.ImageUrl, required this.descript});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(ImageUrl),
            placeholder: AssetImage('loading-cargando.gif'),
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
            fadeInDuration: Duration(seconds: 10),
          ),
          Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(descript))
        ],
      ),
    );
  }
}
