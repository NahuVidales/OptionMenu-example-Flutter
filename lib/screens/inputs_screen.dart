import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Input'),
      ),
      body: SingleChildScrollView(
         child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: Column(
            children: [
              TextFormField(
                textCapitalization: TextCapitalization.words,
                autofocus: true,
                initialValue: 'Start in',
                onChanged: (value) {
                  print('value $value');
                },
              )
            ],
          ),)
      ),
    );
  }
}