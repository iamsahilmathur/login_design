import 'package:flutter/material.dart';
import 'package:login_design/src/res/dimen.dart';

class MyCard extends StatelessWidget {

  final Widget widget;
  final Color color;
  final double elevation;
  final double borderRadius;
  final double width;
  final double height;

  MyCard({@required this.widget,this.color,this.elevation,this.borderRadius,this.width,this.height});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(Dimen.fourteen),
      width: width,
      height: height,
      child: Card(
          child: Padding(
            padding: EdgeInsets.all(Dimen.sixteen),
             child: widget,
          ),
          color: color,
          elevation: elevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius)
          ),
      ),
    );
  }
}
