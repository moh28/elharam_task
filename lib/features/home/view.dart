import 'package:elharam_elrabe3/constant.dart';
import 'package:elharam_elrabe3/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common_component/widgets/app_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsDirectional.only(top: 70.h,start: 24.w,end: 24.w),
        child: Column(
          children: [
            Row(
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  AppText(text: 'Welcome Back!',size: 12.sp,),
                  const AppText(text: 'Falcon Thought',fontFamily: FontFamily.semiBold,color: textBlackColor,)
                ],
                ),
                const Spacer(),
                Container(
                  height: 52.h,
                  width: 52.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.w),
                      color: primaryColor),
                  child: Image.asset('assets/images/cart_icon.png'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
