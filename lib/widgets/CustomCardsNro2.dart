import 'package:flutter/material.dart';

class CustomCardsNro2 extends StatelessWidget {
  const CustomCardsNro2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        children: [
          FadeInImage(
              image: NetworkImage(
                  'https://cdn.autobild.es/sites/navi.axelspringer.es/public/styles/1200/public/media/image/2016/10/579423-vw-scirocco-r-wolfsburg-adios-como-merece.jpg?itok=jZbt9e1p'),
              placeholder: AssetImage(
                  'C:\Users\nahue\Documents\GitHub\OptionMenu-example-Flutter\assets\Car Dynamic picture,running red car gif _.gif'),
              width: double.infinity,
              height: 260,
              fit: BoxFit.cover)
        ],
      ),
    );
  }
}
