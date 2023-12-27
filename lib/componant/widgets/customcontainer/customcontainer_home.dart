import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/color.dart';
import '../custom_text/custom_text.dart';

class CustomerContainerHome extends StatelessWidget {
  final String text;
  final String image;


  const CustomerContainerHome({Key? key,required this.text, required this.image }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Expanded(
      child: Column(
        children: [
          Container(
            height: 120,width: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(20),
                color: Colors.grey.shade100
            ),
            child: Column(
              children: [
                Expanded(child: Image.asset(image)),
                const SizedBox(height: 15.0,),
                 Expanded(child: CustomText(text: text, size: 16, color: primaryColor, colorShadow: primaryColor))

              ],
            ),
          ),
          const SizedBox(height: 10,),

        ],
      ),
    );

  }
}
