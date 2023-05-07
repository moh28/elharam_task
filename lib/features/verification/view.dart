import 'package:elharam_elrabe3/common_component/widgets/app_text.dart';
import 'package:elharam_elrabe3/constant.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../common_component/items/auth_headers.dart';
import '../../common_component/widgets/app_bar.dart';
import '../../common_component/widgets/app_button.dart';
import '../../gen/fonts.gen.dart';

class VerificationScreen extends StatefulWidget {
  final otpController = TextEditingController();

  VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
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
      ),title: 'Verification',),
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
                  bottom: 23.h,
                  text: 'We have to send the verification to',
                  textSec: ' your email address.',
                  imageHeader: true,
                  image: 'assets/images/verification_logo.png',
                ),
                PinCodeTextField(
                  length: 4,
                  keyboardType: TextInputType.number,
                  autoFocus: true,
                  autoDisposeControllers: true,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(6.w),
                    fieldHeight: 53.h,
                    fieldWidth: 72.w,
                    activeFillColor: const Color(0xffFFFFFF),
                    selectedColor: primaryColor,
                    selectedFillColor: const Color(0xffFFFFFF),
                    inactiveColor: const Color(0xffF3F3F3),
                    inactiveFillColor: const Color(0xffF3F3F3),
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,
                  controller: widget.otpController,
                  onCompleted: (v) {
                    if (kDebugMode) {
                      print("Completed");
                    }
                  },
                  onChanged: (value) {
                    if (kDebugMode) {
                      print(value);
                    }
                    setState(() {});
                  },
                  beforeTextPaste: (text) {
                    if (kDebugMode) {
                      print("Allowing to paste $text");
                    }

                    return true;
                  },
                  appContext: context,
                ),
                AppButton(
                  component: AppText(
                      text: 'Submit',
                      color: Colors.white,
                      size: 18.sp,
                      fontFamily: FontFamily.semiBold),
                  top: 32.h,
                  bottom: 23.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const AppText(
                      text: 'Don’t receive code?',
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const AppText(
                        text: 'Resend',
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
