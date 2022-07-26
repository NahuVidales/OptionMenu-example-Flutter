import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:flutter_application_1/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();

    final formValues= <String, String>{
      'User'      : 'Nahu',
      'Real Name' : 'Nahuel',
      'Email'     : 'nv@yopmail.com',
      'Password'  : '123456',
      'role'      : 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Input'),
      ),
      body: SingleChildScrollView(
         child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                InputCustomsText(helperText: 'Insert username', hintText: 'Username', labelText: 'Name', formProperty: 'User', formValues: formValues,),
                const SizedBox(height: 30,),
                
                InputCustomsText(helperText: 'insert Real Name', hintText: 'Real Name', labelText: 'Real Name', formProperty: 'Real Name', formValues: formValues,),
                const SizedBox(height: 30,),
          
                InputCustomsText(helperText: 'Insert Email', hintText: 'Email Adress', labelText: 'Email', keyboardType: TextInputType.emailAddress, formProperty: 'Email', formValues: formValues,),
                const SizedBox(height: 30,),
          
                InputCustomsText(helperText: 'Insert Password', hintText: 'Password', labelText: 'Password', obscureText: true, formProperty: 'Password', formValues: formValues,),
                const SizedBox(height: 30,),

                DropdownButtonFormField<String>(
                  value: 'Admin',
                  items: const [
                    DropdownMenuItem(value: 'Admin',  child: Text('Admin')),
                    DropdownMenuItem(value: 'Junior', child: Text('Junior')),
                    DropdownMenuItem(value: 'Mid',    child: Text('Mid')),
                    DropdownMenuItem(value: 'Senior', child: Text('Senior')),
                  ],
                  onChanged:(value) {
                    log(value.toString());
                    formValues ['role'] = value ?? 'Admin';
                  },),

                ElevatedButton(
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  if ( !myFormKey.currentState!.validate()){  
                    log('Formulario no valido');
                    return;
                  }
                  log(formValues.toString());
                },
                
                  child: const SizedBox(width: double.infinity,
                  child: Center(child: Text('Save Changes')),),
                ),
              ],
            ),
          ),),
      ),
    );
  }
}
