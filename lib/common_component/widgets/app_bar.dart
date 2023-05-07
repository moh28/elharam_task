import 'package:elharam_elrabe3/constant.dart';
import 'package:elharam_elrabe3/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final String? title;
  const CustomAppBar({
    Key? key,
    this.leading,
    this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading??SizedBox(width: 18.w,height: 14.h,) ,
      title: Text(
        title ?? '',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 22.sp,
            fontFamily: FontFamily.semiBold,
            color: textBlackColor),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,

    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(52.0.h);
}