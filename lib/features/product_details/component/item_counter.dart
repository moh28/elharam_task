import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ItemCounter extends StatelessWidget {
  final double? width;
  final double?height;
  final Color color;
  final void Function() onTap;
  final bool? isClicked;
  final bool isPlus;
  const ItemCounter({Key? key, required this.color, required this.onTap,  required this.isPlus, this.isClicked=false, this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadiusDirectional.circular(4.w),
        ),
        width:width?? 36.w,
        height:height?? 36.h,
        child: isPlus?const Icon(Icons.add):const Icon(Icons.remove),
      ),
    );
  }
}
