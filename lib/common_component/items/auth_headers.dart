import 'package:elharam_elrabe3/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant.dart';

class AuthHeaders extends StatelessWidget {
  final double? top;
  final double? bottom;
  final double? start;
  final double? end;
  final String text;
  final String? textSec;
  final String? image;
  final bool imageHeader;
  final double?imageWidth;
  final double? imageStart;
  final double? imageEnd;
  const AuthHeaders(
      {Key? key,
      this.top,
      this.bottom,
      this.start,
      this.end,
      required this.text,
      this.image,
      required this.imageHeader, this.imageWidth, this.imageStart, this.imageEnd, this.textSec})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
          top: top ?? 0, start: start ?? 0, end: end ?? 0, bottom: bottom ?? 0),
      child: Column(
        children: [
          SizedBox(
            width: 260.w,
            height: 21.h,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.sp,
                fontFamily: FontFamily.regular,
                color: textGreyColor,
              ),
            ),
          ),
          SizedBox(
            width: 260.w,
            height: 21.h,
            child: Text(
              textSec??'',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.sp,
                fontFamily: FontFamily.regular,
                color: textGreyColor,
              ),
            ),
          ),
          imageHeader
              ? Padding(
                  padding: EdgeInsetsDirectional.only(top: 16.h,start: imageStart??0,end: imageEnd??0),
                  child: Image.asset(
                    image!,
                    height:230.h,
                    width: imageWidth?? 230.w,
                  ),
                )
              : SizedBox(
                  height: 57.h,
                ),
        ],
      ),
    );
  }
}
