
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/color.dart';
import '../custom_text/custom_text.dart';

class CustomMedical extends StatelessWidget {
  final String text;
  final Icon iconData;
  final Function function;



  const CustomMedical({Key? key,required this.text, required this.iconData, required this.function,  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadiusDirectional.circular(10.0),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: CustomText(text: text, size: 18, color: Colors.grey.shade700, colorShadow: secondColor),
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: iconData
          ),


        ],
      ),
    );

  }
}
