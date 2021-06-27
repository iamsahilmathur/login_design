import 'package:flutter/material.dart';
import 'package:login_design/src/res/app_images.dart';
import 'package:login_design/src/res/colors.dart';
import 'package:login_design/src/res/constants.dart';
import 'package:login_design/src/widgets/MyText.dart';
import 'package:login_design/src/widgets/background.dart';
import 'package:login_design/src/res/dimen.dart';
import 'package:login_design/src/widgets/card_view.dart';
import 'package:login_design/src/widgets/my_button.dart';
import 'package:login_design/src/widgets/my_textfield.dart';
import 'package:login_design/src/widgets/my_sizedbox.dart';


class RegisterPage extends StatelessWidget {

  final _globalKey= GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
         body: Container(
           height: size.height,
           width: size.width,
           child: Background(
             child: Column(
               mainAxisSize: MainAxisSize.max,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Expanded(flex: 1,
                     child: Container(
                         padding: EdgeInsets.all(Dimen.forty),
                         child: Align(
                             alignment: Alignment.topLeft,
                             child: MyText(label:Constants.register,color:Colors.black,fontSize: Dimen.thirtyTwo,fontWeight:FontWeight.bold)))),
                 Expanded(
                     flex: 2,
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         MyCard(
                             elevation: Dimen.six,
                             borderRadius: Dimen.twelve,
                             widget: Form(
                                 key: _globalKey,
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   mainAxisSize: MainAxisSize.min,
                                   children: [
                                     MyTextField(icon: Image.asset(AppImages.user,width: Dimen.eighteen,height: Dimen.eighteen,),hintText: Constants.user,identifier: Constants.user,fontSize: Dimen.fourteen,),
                                     MySizedBox(height: Dimen.twelve,),
                                     MyTextField(icon: Image.asset(AppImages.key,width: Dimen.eighteen,height: Dimen.eighteen,),hintText: Constants.password,identifier: Constants.password,fontSize: Dimen.fourteen,),
                                     MySizedBox(height: Dimen.fourteen,),
                                     MyTextField(icon: Icon(Icons.mail_outline_sharp,color: AppColors.btnColor(),size: Dimen.eighteen,),hintText: Constants.email,identifier: Constants.email,fontSize: Dimen.fourteen,),
                                     MySizedBox(height: Dimen.fourteen,),
                                     MyTextField(icon: Icon(Icons.home_outlined,color: AppColors.btnColor(),size: Dimen.twentyTwo,),hintText: Constants.address,identifier: Constants.address,fontSize: Dimen.fourteen,),
                                   ],
                                 )
                             )
                         ),
                         Row(
                           mainAxisSize: MainAxisSize.max,
                           children: [
                             Expanded(
                               child: Container(),
                               /*child: Align(
                                       alignment: Alignment.centerLeft,
                                       child: Radio(
                                           activeColor: AppColors.btnColor(),
                                           value: Constants.rememberMe,
                                           groupValue: Constants.rememberMe,
                                           onChanged: (value){

                                           }
                                       )
                                   ),*/
                             ),
                             Expanded(child: MySizedBox(width: Dimen.six,)),
                             Expanded(child: MyButton(widget: MyText(label: Constants.register,color: Colors.white,fontSize: Dimen.eighteen,fontWeight: FontWeight.bold,),width: size.width * .6,height: size.height * .05,))
                           ],
                         )
                       ],
                     )
                 ),
                 Expanded(
                   flex: 1,
                   child: Container(
                     padding: EdgeInsets.all(Dimen.forty),
                     child: Align(
                         alignment: Alignment.bottomRight,
                         child: InkWell(
                           child: MyText(
                               label:Constants.login,color:Colors.black,fontSize: Dimen.thirtyTwo,fontWeight:FontWeight.bold),
                           onTap: (){
                             _goToLogin(context);
                           },
                         )
                     ),
                   ),
                 ),
               ],
             ),
           ),
         ),
      ),
    );
  }

  void _goToLogin(BuildContext context){
     Navigator.pop(context);
  }

}
