import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  void ChangeForm(){
    widthP = Random().nextInt(200).toDouble() + 40;
    heightP = Random().nextInt(200).toDouble() + 40;
    colorP = Color.fromARGB(
    Random().nextInt(255),
    Random().nextInt(255),
    Random().nextInt(255),
    1,);
    borderP = BorderRadius.circular(Random().nextInt(25).toDouble()+ 5);
    setState(() {});
  }
  double widthP = 40;
  double heightP = 40;
  Color colorP = Colors.red;
  BorderRadiusGeometry borderP = BorderRadius.circular(20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: Container(
          height: heightP,
          width: widthP,
          
          decoration: BoxDecoration(borderRadius: borderP, color: colorP,),
         ),
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.airplanemode_on_outlined) , onPressed:ChangeForm,),
      );
    
  }
} 