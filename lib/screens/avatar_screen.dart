import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AvatarScreen'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: const CircleAvatar(child: const Text('NV'),),
          )

        ],
      ),
      body: const Center(
        
        child: CircleAvatar(backgroundImage: NetworkImage('https://codigoespagueti.com/wp-content/uploads/2022/05/goku-ultra-instinto-figura-coleccionable.jpg'),
        maxRadius: 150),
      ),
    );
  }

}
