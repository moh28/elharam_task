import 'package:elharam_elrabe3/common_component/widgets/app_input.dart';
import 'package:elharam_elrabe3/common_component/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../common_component/items/auth_headers.dart';
import '../../common_component/widgets/app_bar.dart';
import '../../common_component/widgets/app_button.dart';
import '../../constant.dart';
import '../../gen/fonts.gen.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Create Account',),
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
                  bottom: 57.h,
                  text: 'You can reset the password for your ',
                  textSec: 'account by completing this form.',
                  imageHeader: false,
                ),
                AppInput(
                  bottom: 16.h,
                ),
                AppInput(
                  bottom: 16.h,
                ),
                AppInput(
                  bottom: 16.h,
                ),
                const AppInput(),
                AppButton(
                  component: AppText(
                      text: 'Create Account',
                      color: Colors.white,
                      size: 18.sp,
                      fontFamily: FontFamily.semiBold),
                  top: 32.h,
                  bottom: 170.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const AppText(
                      text: 'Have account?',
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const AppText(
                        text: 'Login',
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
