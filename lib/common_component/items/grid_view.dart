import 'package:elharam_elrabe3/common_component/items/clip_path.dart';
import 'package:elharam_elrabe3/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemGridView extends StatelessWidget {
  const ItemGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 100.h),
        child: Padding(
          padding: EdgeInsetsDirectional.only(start: 50.w),
          child: Container(
            width: 160.w,
            height: 259.h,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.w),
                  child: ClipPath(
                    clipper: KClippPathAppbar(),
                    child: Image.asset(
                      'assets/images/onboarding_1.png',
                      width: 160.w,
                      fit: BoxFit.fill,
                      height: 190.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 162.h, left: 52.w),
                  child: Container(
                    height: 60.h,
                    width: 60.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.w),
                        color: Colors.white),
                  ),
                ),
                Positioned(
                    top: 170.h,
                    left: 56.w,
                    child: Container(
                      height: 52.h,
                      width: 52.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.w),
                          color: primaryColor),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
