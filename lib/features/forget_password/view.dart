import 'package:elharam_elrabe3/common_component/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../common_component/items/auth_headers.dart';
import '../../common_component/widgets/app_bar.dart';
import '../../common_component/widgets/app_button.dart';
import '../../common_component/widgets/app_input.dart';
import '../../gen/fonts.gen.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(leading: IconButton(
        icon: Padding(
          padding:  EdgeInsetsDirectional.only(start: 25.w,),
          child:  ImageIcon(color: Colors.black,size: 17.sp,
            const AssetImage(
              'assets/images/icon_forword.png',
            ),
          ),
        ),
        onPressed: () {},
      ),title: 'Forget password',),
      body: SingleChildScrollView(
        child:Padding(
          padding:
          EdgeInsetsDirectional.only(top: 8.h, start: 24.w, end: 24.w),
          child: Form(
            key: formKey,
            child: Column(crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                AuthHeaders(end: 30.w,
                  text:
                  'Enter your email to reset your password.',
                  imageHeader: true,
                  image: 'assets/images/forget_logo.png',
                ),
                 AppInput(top: 23.h,label: 'Email address',),
                AppButton(component:  AppText(text: 'Submit',color: Colors.white,size: 18.sp,fontFamily: FontFamily.semiBold),top: 32.h,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}