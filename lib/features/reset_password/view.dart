import 'package:elharam_elrabe3/common_component/widgets/app_input.dart';
import 'package:elharam_elrabe3/common_component/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../common_component/items/auth_headers.dart';
import '../../common_component/widgets/app_bar.dart';
import '../../common_component/widgets/app_button.dart';
import '../../gen/fonts.gen.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:  CustomAppBar( title: 'Reset password',leading: IconButton(
      icon: const ImageIcon(
        AssetImage(
          'assets/images/icon_forword.png',
        ),
      ), onPressed: () {},
    ),),
      body: SingleChildScrollView(
        child:Padding(
          padding:
          EdgeInsetsDirectional.only(top: 8.h, start: 24.w, end: 24.w),
          child: Form(
            key: formKey,
            child: Column(crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                AuthHeaders(end: 40.w,bottom: 23.h,
                  text:
                  'You can reset the password for your ',
                  textSec: 'account by completing this form.',
                  imageHeader: true,
                  image: 'assets/images/reset_logo.png',
                ),
                AppInput(bottom: 16.h,label: 'New Password',),
                const AppInput(),
                AppButton(component:  AppText(text: 'Reset password',color: Colors.white,size: 18.sp,fontFamily: FontFamily.semiBold),top: 32.h,bottom: 23.h,onTap: (){},),
              ],
            ),
          ),
        ),
      ),
    );
  }
}