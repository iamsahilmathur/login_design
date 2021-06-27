import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login_design/src/res/dimen.dart';
import 'package:login_design/src/screens/login.dart';
import 'package:login_design/src/widgets/MyText.dart';
import 'package:login_design/src/widgets/my_sizedbox.dart';


class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  //bool flag= false;

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => Login())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Center(
               child: FlutterLogo(
                 size: 100,
               ),
             ),
             MySizedBox(height: Dimen.twelve,),
             MyText(label: "Flutter Devs",color: Colors.black,fontSize: Dimen.twentyTwo,fontWeight: FontWeight.w300,),
           ],
       ),
    );
  }
}
