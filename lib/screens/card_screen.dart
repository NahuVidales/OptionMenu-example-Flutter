import 'package:flutter/material.dart';

import 'package:flutter_application_1/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        children: const [
          CustomCardsNro1(),
          CustomCardsNro2(
            ImageUrl:
                'https://p4.wallpaperbetter.com/wallpaper/367/111/813/volkswagen-scirocco-car-tuning-wallpaper-preview.jpg',
            descript: 'awesome Car',
          ),
          CustomCardsNro2(
            ImageUrl:
                'https://p4.wallpaperbetter.com/wallpaper/81/859/733/tuning-volkswagen-volkswagen-scirocco-wallpaper-preview.jpg',
            descript: 'Best Car',
          ),
          CustomCardsNro2(
            ImageUrl:
                'https://p4.wallpaperbetter.com/wallpaper/118/258/516/volkswagen-scirocco-volkswagen-sirocco-hd-wallpaper-preview.jpg',
            descript: 'Sport Car ',
          ),
          CustomCardsNro2(
            ImageUrl:
                'https://p4.wallpaperbetter.com/wallpaper/118/258/516/volkswagen-scirocco-volkswagen-sirocco-hd-wallpaper-preview.jpg',
            descript: 'Sport Car ',
          ),
          CustomCardsNro2(
            ImageUrl:
                'https://p4.wallpaperbetter.com/wallpaper/118/258/516/volkswagen-scirocco-volkswagen-sirocco-hd-wallpaper-preview.jpg',
            descript: 'Sport Car ',
          ),
          CustomCardsNro2(
            ImageUrl:
                'https://p4.wallpaperbetter.com/wallpaper/118/258/516/volkswagen-scirocco-volkswagen-sirocco-hd-wallpaper-preview.jpg',
            descript: 'Sport Car ',
          ),
          CustomCardsNro2(
            ImageUrl:
                'https://p4.wallpaperbetter.com/wallpaper/118/258/516/volkswagen-scirocco-volkswagen-sirocco-hd-wallpaper-preview.jpg',
            descript: 'Sport Car ',
          )
        ],
      ),
    );
  }
}
