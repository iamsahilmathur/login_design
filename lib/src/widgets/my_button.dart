import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_design/src/res/colors.dart';
import 'package:login_design/src/res/dimen.dart';

class MyButton extends StatelessWidget {

  final double height;
  final double width;
  final Widget widget;

  MyButton({@required this.height,this.width,this.widget});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
       borderRadius: BorderRadius.only(topLeft: Radius.circular(Dimen.twentyTwo),bottomLeft: Radius.circular(Dimen.twentyTwo),topRight: Radius.zero,bottomRight: Radius.zero),
      child: Container(
           width: width,
           height: height,
           color: AppColors.btnColor(),
         child: Center(
             child: widget,
         ),
      ),
    );
  }
}
