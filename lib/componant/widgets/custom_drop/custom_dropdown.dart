
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/color.dart';
import '../custom_text/custom_text.dart';

class CustomDrop extends StatelessWidget {
  final String text;
  final String text2;
  final Function function;


  const CustomDrop({Key? key,required this.text, required this.text2, required this.function, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
         CustomText(text: text, size: 16, color: primaryColor, colorShadow: primaryColor),
        const SizedBox(
          width: 30,
        ),
        Expanded(
          flex: 3,
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey.shade50,
              borderRadius: BorderRadiusDirectional.circular(10.0),
            ),
            child: DropdownButtonFormField<String>(
              iconSize: 30,
              iconEnabledColor: primaryColor,
              icon: const Icon(
                Icons.keyboard_arrow_down,
              ),
              decoration: const InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                border:
                UnderlineInputBorder(borderSide: BorderSide.none),
              ),
              items:  [
                DropdownMenuItem(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: CustomText(
                        text: text2,
                        size: 14,
                        color: primaryColor,
                        colorShadow: primaryColor),
                  ),
                )
              ],
              onChanged:(input)=> function(input),
            ),
          ),
        ),
      ],
    );

  }
}
