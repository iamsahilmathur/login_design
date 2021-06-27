import 'package:flutter/material.dart';
import 'package:login_design/src/screens/register.dart';
import 'package:login_design/src/screens/splash.dart';
import 'src/res/colors.dart';
import 'src/screens/login.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.rightSemiCircleColor(),
        accentColor: AppColors.btnColor(),
        appBarTheme: Theme.of(context).appBarTheme.copyWith(brightness: Brightness.light,backgroundColor: AppColors.btnColor())
      ),
       routes: {
         "/" : (context) => Splash(),
         "login" : (context) => Login(),
         "register" : (context) => RegisterPage()
       },
      initialRoute: "/",
    );
  }

}