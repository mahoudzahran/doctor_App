import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/color.dart';

class CustomTextFormFeild extends StatelessWidget {
  final String hint;
  final Function onSaved;
  final Function validation;
  final double width;

  final TextEditingController? editingController;


  const CustomTextFormFeild( this.hint, this.onSaved, this.validation, {super.key, this.editingController, required this.width});

  @override
  Widget build(BuildContext context) {
    return   Container(
      width:width,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadiusDirectional.circular(10.0),
      ),
      child: TextFormField(
        decoration:   InputDecoration(
          focusedBorder:  UnderlineInputBorder(
            borderSide: BorderSide.none,

          ),
          border: const UnderlineInputBorder(
              borderSide: BorderSide.none
          ),
          hintText: hint,
          contentPadding: EdgeInsets.only(left: 20.0),
          hintStyle: TextStyle(
            color: primaryColor,

          ),


        ),
        onSaved:(input)=>onSaved(input) ,
        validator:(input)=>validation(input) ,

      ),
    );
  }
}
