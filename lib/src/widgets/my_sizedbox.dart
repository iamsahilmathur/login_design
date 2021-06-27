import 'package:flutter/material.dart';


class MySizedBox extends StatelessWidget {
  final double height;
  final double width;

  MySizedBox({this.width,this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
