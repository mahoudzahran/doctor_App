import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/color.dart';
import '../custom_text/custom_text.dart';

class CustomContainer extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final VoidCallback function;

  const CustomContainer({Key? key,required this.text,required this.size,required this.color, required this.function }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: function,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadiusDirectional.circular(10.0),
            border: Border.all(
              color: Colors.teal,
            )),
        child: Row(
          children: [
             Padding(
              padding:  EdgeInsets.only(left: 30.0),
              child: CustomText(
                  text: text,
                  size: 25,
                  color: whiteColor,
                  colorShadow: whiteColor),
            ),
            const Spacer(),
            const Icon(
                  Icons.keyboard_arrow_down,
                  size: 40,
                  color: whiteColor,

            )
          ],
        ),
      ),
    );

  }
}
