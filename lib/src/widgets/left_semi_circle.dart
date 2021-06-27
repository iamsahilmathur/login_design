import 'package:flutter/material.dart';
import 'package:login_design/src/res/colors.dart';


class LeftSemiCircle extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
     Size size= MediaQuery.of(context).size;
     return ClipPath(
        clipper: LeftCircleClipper(),
        child: Container(
          color: AppColors.btnColor(),
          width: size.width * .48,
          height: 120,
        ),
     );
  }

}

class LeftCircleClipper extends CustomClipper<Path>{

  @override
  Path getClip(Size size) {
     Path path= Path();

     // moveTo point behaves like second point where given point will meet like lineTo(x,y)
     path.moveTo(0.0, size.height);

     // (size.width / 2, size.height / 2) is a controlling point
    // path.quadraticBezierTo(size.width * .4,size.height* .42 ,size.width,size.height);
     path.quadraticBezierTo(size.width * .5, size.height / 2,0.0, 0.0); // here (0.0,0.0) is starting point


     path.close();
     return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}