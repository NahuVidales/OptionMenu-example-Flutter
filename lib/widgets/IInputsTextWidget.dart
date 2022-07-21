  import 'package:flutter/material.dart';




class InputCustomsText extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  
  const InputCustomsText({
    Key? key,
     this.hintText,
      this.labelText,
       this.helperText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      autofocus: true,
      onChanged: (value) {
        print('value $value');
      },
      validator: (value) {
        if (value == null) return 'this field is required';
        return value.length < 3 ?  'need 3 characters at least': null ;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: Icon(Icons.new_releases_sharp),
        icon: Icon(Icons.account_box_sharp),
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.only(
 //                     bottomLeft: Radius.circular(10), 
 //                     topRight: Radius.circular(10)
//                    )
  //                ),
      ),
    );
  }
}