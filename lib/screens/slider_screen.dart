import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  @override
  double valueSlider = 50;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Slider Screen'),
      ),
      body: SingleChildScrollView(
        child:Column(
          children: [
          Slider.adaptive(
            min: 10,
            max: 1000,
            value: valueSlider,
            onChanged:(value) {
              valueSlider = value ;
              setState(() {});
            },),
            Image(height: valueSlider, 
            image: NetworkImage('https://www.pngplay.com/wp-content/uploads/12/Goku-Wallpaper-No-Background.png')),

            SizedBox(height: 40,),
          ]
        ) ,


      ),
    );
  }
}