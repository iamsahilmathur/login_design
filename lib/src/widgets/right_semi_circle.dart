import 'package:flutter/material.dart';
import 'package:login_design/src/res/colors.dart';

class RightSemiCircle extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
      return ClipPath(
          clipper: MyClipper(),
          child: Container(
            color: AppColors.rightSemiCircleColor(),
            width: size.width * .15,
            height: 120,
          ),
      );
  }

}

class MyClipper extends CustomClipper<Path>{

  @override
  Path getClip(Size size) {
    final path = Path();

    // You can move line at any point using moveTo where they will meet
     path.moveTo(size.width, 0.0);
    // path.lineTo(x, y);

    // If you will multiply by negative values then it goes to left, for positive values goes to right side
     path.quadraticBezierTo(size.width * -.4,size.height* .42 ,size.width,size.height);
     path.quadraticBezierTo(size.width * -.5,size.height / 2 ,size.width,size.height -.2);
     path.quadraticBezierTo(size.width * -.5,size.height * .48 ,size.width,size.height - .2);
     path.quadraticBezierTo(size.width * -.2,size.height * .55 ,size.width,size.height - .2);



     // lineTo drow line
   // path.lineTo(size.width * 0.0, size.height / 2);
   // path.lineTo(size.width / 2, size.height);
   // path.lineTo(size.width, size.height/2);
   // path.moveTo(size.height, size.width / 2);
  //  path.moveTo(0.0, size.height / 2);
   // path.lineTo(size.width / 2, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(oldClipper) => false;

}