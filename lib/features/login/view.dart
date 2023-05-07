import 'package:elharam_elrabe3/common_component/widgets/app_button.dart';
import 'package:elharam_elrabe3/common_component/widgets/app_input.dart';
import 'package:elharam_elrabe3/common_component/widgets/app_text.dart';
import 'package:elharam_elrabe3/constant.dart';
import 'package:elharam_elrabe3/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common_component/items/auth_headers.dart';
import '../../common_component/widgets/app_bar.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
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
      ),title: 'Login',),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.only(top: 8.h, start: 24.w, end: 24.w),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                AuthHeaders(
                  end: 40.w,
                  text: 'Hello, welcome back to account.',
                  imageHeader: true,
                  image: 'assets/images/login_logo.png',
                  imageWidth: 255.56.h,
                ),
                const AppInput(label: 'Email address',),
                AppInput(
                  label: 'Password',
                  top: 20.h,
                  bottom: 20.h,
                ),
                AppText(
                  text: 'Forgot Password ?',
                      size: 15.sp,
                      fontFamily: FontFamily.medium,
                      color: textBlackColor),
                AppButton(
                  component: AppText(
                   text: 'Login',
                        color: Colors.white,
                        size: 18.sp,
                        fontFamily: FontFamily.semiBold),
                  top: 20.h,
                  bottom: 134.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const AppText(
                      text: 'Don’t have account?',
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const AppText(
                        text: 'Sign up',
                        fontFamily: FontFamily.medium,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
