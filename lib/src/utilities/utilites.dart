import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_design/src/res/colors.dart';

class Utilties{

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  static AppBar appBar() => AppBar(
    backwardsCompatibility: false,
    backgroundColor: Colors.transparent,
    systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: AppColors.btnColor()),
  );


}