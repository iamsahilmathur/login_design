import 'package:flutter/material.dart';
import 'package:login_design/src/res/app_fonts.dart';
import 'package:login_design/src/res/colors.dart';

class MyText extends StatelessWidget{
  final String label;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;

 // MyText({this.label,this.color,this.fontSize,this.fontWeight})/*:super(key: key)*/;
  MyText({@required this.label, this.color, this.fontSize, this.fontWeight});


  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: AppFonts.robotoNormal
     ),
    );
  }


}