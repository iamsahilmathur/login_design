import 'package:flutter/material.dart';
import 'package:login_design/src/res/colors.dart';

import 'left_semi_circle.dart';
import 'right_semi_circle.dart';


class Background extends StatelessWidget{

  final Widget child;

  Background({Key key,@required this.child}):super(key : key);

  @override
  Widget build(BuildContext context) {
     return Stack(
        fit: StackFit.expand,
        children: [
            Positioned(
                top: 2,
                right: 2,
                child: RightSemiCircle(),
            ),
            Positioned(
               top: 34,
                right: 70,
                child: Container(
                   width: 40,
                    height: 40,
                    decoration: new BoxDecoration(
                      color: AppColors.rightSemiCircleColor(),
                      shape: BoxShape.circle,
                    )
                )
            ),
            Positioned(
            bottom: 2,
            left: 2,
            child: LeftSemiCircle(),
          ),
            Positioned(
              bottom: 34,
              left: 70,
              child: Container(
                  width: 40,
                  height: 40,
                  decoration: new BoxDecoration(
                    color: AppColors.btnColor(),
                    shape: BoxShape.circle,
                  )
              )
          ),
            child
        ],
     );
  }

}