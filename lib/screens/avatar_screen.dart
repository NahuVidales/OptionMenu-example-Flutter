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
            child: const CircleAvatar(backgroundImage: NetworkImage('https://images.unsplash.com/photo-1617703174946-6895edf8866f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80'),),
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
