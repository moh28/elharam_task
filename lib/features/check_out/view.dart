import 'package:elharam_elrabe3/common_component/widgets/app_button.dart';
import 'package:elharam_elrabe3/common_component/widgets/app_input.dart';
import 'package:elharam_elrabe3/common_component/widgets/app_text.dart';
import 'package:elharam_elrabe3/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common_component/widgets/app_bar.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
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
      ),title: 'Checkout',),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding:
                  EdgeInsetsDirectional.only(start: 24.w, end: 24.w, top: 32.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppText(
                    text: 'Billing address',
                  ),
                  AppInput(
                    top: 16.h,
                  ),
                  AppInput(
                    top: 16.h,
                  ),
                  AppInput(
                    top: 16.h,
                  ),
                  AppInput(
                    top: 16.h,
                  ),
                  AppInput(
                    top: 16.h,
                  ),
                  AppInput(
                    top: 16.h,
                  ),
                  AppInput(
                    top: 16.h,
                  ),
                  AppInput(
                    top: 16.h,
                  ),
                  AppInput(
                    top: 16.h,
                  ),
                  AppInput(
                    top: 16.h,
                  ),
                  AppInput(
                    top: 16.h,
                    maxLines: 5,
                    bottom: 85.h,
                  ),
                ],
              ),
            ),
          ),
          AppButton(
            component: AppText(
                text: 'Checkout',
                color: Colors.white,
                size: 18.sp,
                fontFamily: FontFamily.semiBold),
            top: 699.h,
            start: 24.w,
            end: 24.w,
          )
        ],
      ),
    );
  }
}
