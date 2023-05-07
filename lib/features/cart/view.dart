import 'package:elharam_elrabe3/common_component/widgets/app_bar.dart';
import 'package:elharam_elrabe3/common_component/widgets/app_text.dart';
import 'package:elharam_elrabe3/constant.dart';
import 'package:elharam_elrabe3/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../common_component/widgets/app_button.dart';
import '../../common_component/widgets/app_input.dart';
import 'component/item_cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        leading: IconButton(
          icon: Padding(
            padding: EdgeInsetsDirectional.only(
              start: 25.w,
            ),
            child: ImageIcon(
              color: Colors.black,
              size: 17.sp,
              const AssetImage(
                'assets/images/icon_forword.png',
              ),
            ),
          ),
          onPressed: () {},
        ),
        title: 'Cart',
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(
          start: 24.w,
          end: 24.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  const AppText(
                    text: 'Total items (4)',
                    color: Color.fromRGBO(113, 113, 113, 1),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Empty cart',
                        style: TextStyle(color: Color.fromRGBO(224, 17, 17, 1)),
                      )),
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 348.h,
                child: ListView.builder(
                  itemBuilder: (context, int index) {
                    return const ItemCard();
                  },
                  itemCount: 5,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(top: 32.h, bottom: 36.h),
                child: Row(
                  children: [
                    SizedBox(
                        width: 242.w,
                        child: const AppInput(
                          borderColor: Color(0xffC0C0C0),
                          color: Colors.white,
                        )),
                    AppButton(
                      component: const AppText(
                        text: 'Apply',
                        color: primaryColor,
                        fontFamily: FontFamily.medium,
                      ),
                      start: 8.w,
                      width: 92.w,
                      color: shadowButtonColor,
                    )
                  ],
                ),
              ),
              Row(
                children: const [
                  AppText(
                    text: 'Subtotal',
                    fontFamily: FontFamily.medium,
                  ),
                  Spacer(),
                  AppText(text: '150EGP', fontFamily: FontFamily.medium)
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(top: 8.h, bottom: 8.h),
                child: Row(
                  children: const [
                    AppText(
                      text: 'Shipping',
                      fontFamily: FontFamily.medium,
                    ),
                    Spacer(),
                    AppText(text: 'Free', fontFamily: FontFamily.medium)
                  ],
                ),
              ),
              Row(
                children: const [
                  AppText(
                    text: 'Total',
                    fontFamily: FontFamily.medium,
                    color: textBlackColor,
                  ),
                  Spacer(),
                  AppText(
                    text: '150EGP',
                    fontFamily: FontFamily.medium,
                    color: textBlackColor,
                  )
                ],
              ),
              AppButton(
                top: 51.h,
                component: AppText(
                    text: 'Checkout',
                    color: Colors.white,
                    size: 18.sp,
                    fontFamily: FontFamily.semiBold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
