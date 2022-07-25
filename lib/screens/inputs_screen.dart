import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

  
    final GlobalKey <FormState> myFormKey = GlobalKey<FormState>();


    final Map <String, String> formValues= {
      'User'      : 'Nahu',
      'Real Name' : 'Nahuel',
      'Email'     : 'nv@yopmail.com',
      'Password'  : '123456',
      'role'      : 'Admin'
    };


    return Scaffold(
      appBar: AppBar(
        title: Text('Text Input'),
      ),
      body: SingleChildScrollView(
         child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                InputCustomsText(helperText: 'Insert username', hintText: 'Username', labelText: 'Name', formProperty: 'User', formValues: formValues,),
                SizedBox(height: 30,),
                
                InputCustomsText(helperText: 'insert Real Name', hintText: 'Real Name', labelText: 'Real Name', formProperty: 'Real Name', formValues: formValues,),
                SizedBox(height: 30,),
          
                InputCustomsText(helperText: 'Insert Email', hintText: 'Email Adress', labelText: 'Email', keyboardType: TextInputType.emailAddress, formProperty: 'Email', formValues: formValues,),
                SizedBox(height: 30,),
          
                InputCustomsText(helperText: 'Insert Password', hintText: 'Password', labelText: 'Password', obscureText: true, formProperty: 'Password', formValues: formValues,),
                SizedBox(height: 30,),

                DropdownButtonFormField<String>(
                  value: 'Admin',
                  items: [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(value: 'Junior', child: Text('Junior')),
                    DropdownMenuItem(value: 'Mid', child: Text('Mid')),
                    DropdownMenuItem(value: 'Senior', child: Text('Senior')),
                  ],
                  onChanged:(value) {
                    print(value);
                    formValues ['role'] = value ?? 'Admin';
                  },),

                ElevatedButton(
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  if ( !myFormKey.currentState!.validate()){  
                    print('Formulario no valido');
                    return;
                  }
                  print(formValues);
                },
                
                  child: SizedBox(width: double.infinity,
                  child: Center(child: Text('Save Changes')),),
                ),
              ],
            ),
          ),)
      ),
    );
  }
}

