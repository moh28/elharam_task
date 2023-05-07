import 'package:elharam_elrabe3/common_component/widgets/app_button.dart';
import 'package:elharam_elrabe3/common_component/widgets/app_text.dart';
import 'package:elharam_elrabe3/constant.dart';
import 'package:elharam_elrabe3/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartSuccessScreen extends StatelessWidget {
  const CartSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(top: 176.h, bottom: 16.h),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 53.w),
              child: Image.asset(
                'assets/images/cart_success_logo.png',
                width: 284.w,
                height: 284.h,
              ),
            ),
          ),
          SizedBox(
            height: 54.h,
            child: Text(
              'Success!',
              style: TextStyle(
                  fontSize: 22.sp,
                  fontFamily: FontFamily.semiBold,
                  color: textBlueColor),
            ),
          ),
          Text(
            'Your order will be delivered soon.',
            style: TextStyle(
                fontSize: 14.sp,
                fontFamily: FontFamily.regular,
                color: textGreyColor),
          ),
          const AppText(
            text: 'Thank you for choosing our app!',
          ),
          AppButton(
            component: AppText(
                text: 'Continue shopping',
                color: Colors.white,
                size: 18.sp,
                fontFamily: FontFamily.semiBold),
            top: 33.h,
            start: 24.w,
            end: 24.w,
          )
        ],
      ),
    );
  }
}
