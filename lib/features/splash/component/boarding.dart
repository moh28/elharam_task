import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_storage/on_boarding_model.dart';
import '../../../gen/fonts.gen.dart';
class ItemBoarding extends StatelessWidget {
  final String image;
  final String title;
  final String body;
  final BoardingModel model;
  const ItemBoarding({Key? key, required this.image, required this.title, required this.body, required this.model, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          image,
          height: double.infinity,
          width: double.infinity,
        ),
        Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(33, 122, 126, 0.0),
                  Color.fromRGBO(33, 122, 126, 1.0),
                ],
              ),
            )),
        Positioned(
          top: 528.h,
          left: 24.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 304.w,
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 32.sp,
                      color: Colors.white,
                      fontFamily: FontFamily.regular),
                ),
              ),
              SizedBox(
                width: 269.w,
                child: Text(
                  body,
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.white,
                      fontFamily: FontFamily.medium),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
