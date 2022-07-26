import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double valueSlider = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Slider.adaptive(
            min: 10,
            max: 1000,
            value: valueSlider,
            onChanged: (value) {
              valueSlider = value;
              setState(() {});
            },
          ),
          Image(
              height: valueSlider,
              image: const NetworkImage(
                  'https://www.pngplay.com/wp-content/uploads/12/Goku-Wallpaper-No-Background.png',),),
          const SizedBox(
            height: 40,
          ),
        ],),
      ),
    );
  }
}
