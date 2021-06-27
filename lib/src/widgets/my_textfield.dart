import 'package:flutter/material.dart';
import 'package:login_design/src/res/app_fonts.dart';
import 'package:login_design/src/res/colors.dart';
import 'package:login_design/src/res/constants.dart';
import 'package:login_design/src/res/dimen.dart';

class MyTextField extends StatelessWidget {

  final Widget icon;
  final String hintText;
  final String identifier;
  final double fontSize;

  MyTextField({@required this.icon,this.hintText,this.identifier,this.fontSize});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
         style: TextStyle(fontSize: fontSize,fontWeight: FontWeight.w500,fontFamily: AppFonts.robotoNormal),
      decoration: InputDecoration(
          icon: icon,
          hintText: hintText,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.btnColor()),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.btnColor()),
            ),
        ),
      validator: (value){
          return makeValidationMsg(value);
      },
    );
  }


  String makeValidationMsg(String value){
    String msg="";

      if(value.isEmpty){
        if(identifier == Constants.user){
          msg = identifier+ " " + Constants.emptyMsg;
        }else if(identifier == Constants.password){
          msg = identifier+ " " + Constants.emptyMsg;
        }
      }else if(value.length < 8 && identifier == Constants.password){
        msg= Constants.passMg;
      }else if(identifier == Constants.email){
         if(value.isEmpty){
           msg = identifier+ " " + Constants.emptyMsg;
         }else if(RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)){
          msg= Constants.emailErrMsg;
         }
      }else{
         msg = identifier+ " " + Constants.emptyMsg;
      }

    return msg;
  }


}
