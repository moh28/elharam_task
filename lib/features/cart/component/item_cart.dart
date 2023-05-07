import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../common_component/widgets/app_text.dart';
import '../../../constant.dart';
import '../../../gen/fonts.gen.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 24.h),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(8.r)),
              child: Image.asset(
                'assets/images/Rectangle 25.png',
                width: 102.w,
                height: 100.h,
                fit: BoxFit.fill,
              )),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 14.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                    text: 'DNK Yellow Shoes',
                    size: 16.sp,
                    color: textBlackColor,
                    fontFamily: FontFamily.medium),
                SizedBox(
                    height: 36.h,
                    width: 225.w,
                    child: AppText(
                      text:
                          'Lorem ipsum dolor sit amet, elite.',
                      size: 12.sp,
                    )),
                Row(
                  children: [
                    AppText(
                      text: '150EGP',
                      size: 16.sp,
                      color: textBlackColor,
                      fontFamily: FontFamily.medium,
                      end: 12.w,
                    ),
                    const AppText(
                      text: '150EGP',
                      shape: TextDecoration.lineThrough,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
