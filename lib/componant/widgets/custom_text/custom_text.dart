import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final Color colorShadow;
  final Alignment? alignment;
  final int? maxLine;
  final FontWeight? fontWeight;
  final double? height;
  const CustomText({Key? key,required this.text,required this.size,required this.color,this.alignment, this.maxLine,  this.fontWeight, this.height,  required this.colorShadow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: alignment,
        child:   Text(text,
          style:  TextStyle(
              color: color,
              fontSize: size,
              shadows: [
                Shadow(
                  offset: const Offset(.5, .5),
                  blurRadius: 1.0,
                  color:colorShadow,
                ),
              ]),)

    );
  }
}
