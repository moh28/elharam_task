import 'package:elharam_elrabe3/constant.dart';
import 'package:elharam_elrabe3/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppText extends StatelessWidget {
  final double?top;
  final double?bottom;
  final double?start;
  final double?end;
  final String text;
  final double? size;
  final String? fontFamily;
  final Color? color;
 final TextDecoration?shape;

  const AppText(
      {Key? key, required this.text, this.size, this.fontFamily, this.color, this.top, this.bottom, this.start, this.end, this.shape})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(top: top??0,start: start??0,bottom: bottom??0,end: end??0),
      child: Text(
        text,
        style: TextStyle(decoration :shape??TextDecoration.none,
            fontSize: size ?? 14.sp,
            fontFamily: fontFamily ?? FontFamily.regular,
            color: color ?? textGreyColor),
      ),
    );
  }
}
