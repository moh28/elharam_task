import 'package:card_swiper/card_swiper.dart';
import 'package:elharam_elrabe3/common_component/widgets/app_button.dart';
import 'package:elharam_elrabe3/common_component/widgets/app_text.dart';
import 'package:elharam_elrabe3/constant.dart';
import 'package:elharam_elrabe3/features/product_details/component/item_drop_down.dart';
import 'package:elharam_elrabe3/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'component/item_counter.dart';
import 'component/item_tab_bar.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool isClicked=false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 315.h,
                    child: Stack(
                      children: [
                        Swiper(
                          itemBuilder: (context, index) => Image.asset(
                            'assets/images/Rectangle 25.png',
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ),
                          autoplay: true,
                          itemCount: 3,
                          scrollDirection: Axis.horizontal,
                          curve: Curves.fastOutSlowIn,
                          pagination: SwiperPagination(
                            alignment: Alignment.bottomCenter,
                            builder: DotSwiperPaginationBuilder(
                                color: Colors.white30,
                                activeColor: primaryColor,
                                size: 10.sp,
                                activeSize: 12.sp),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(top: 50.h, start: 24.w),
                          child: const InkWell(
                            child: ImageIcon(
                              AssetImage(
                                'assets/images/icon_forword.png',
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.only(top: 16.h, start: 24.w, end: 24.w),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 11.h),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 30.h,
                                child: AppText(
                                  text: 'DNK Yellow Shoes',
                                  size: 16.sp,
                                  fontFamily: FontFamily.medium,
                                  color: textBlackColor,
                                ),
                              ),
                              const Spacer(),
                              Image(
                                width: 24.w,
                                height: 24.h,
                                image: const AssetImage('assets/images/Star 1 (1).png'),
                              ),
                              AppText(
                                start: 4.w,
                                text: '4.3',
                                color: textBlackColor,
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 22.h,
                              width: 22.w,
                              decoration: BoxDecoration(
                                  color: const Color(0xff00275A),
                                  borderRadius: BorderRadius.circular(22.w)),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.w),
                              child: Container(
                                height: 22.h,
                                width: 22.w,
                                decoration: BoxDecoration(
                                    color: const Color(0xffB79F49),
                                    borderRadius: BorderRadius.circular(22.w)),
                              ),
                            ),
                            Container(
                              height: 22.h,
                              width: 22.w,
                              decoration: BoxDecoration(
                                  color: const Color(0xff159660),
                                  borderRadius: BorderRadius.circular(22.w)),
                            ),
                          ],
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.only(top: 11.h, bottom: .140.h),
                          child: Row(
                            children: [
                              AppText(
                                text: 'Size',
                                size: 16.sp,
                                color: textBlackColor,
                                end: 12.w,
                              ),
                              const DropDownItem(),
                            ],
                          ),
                        ),
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
                            const Spacer(
                              flex: 1,
                            ),
                            ItemCounter(color: isClicked ?const Color(0xffAAAAAA):shadowButtonColor, onTap: () {isClicked=!isClicked;}, isPlus: false,
                            ),
                            AppText(
                              start: 12.w,
                              end: 12.w,
                              text: '1',
                              size: 15.sp,
                              color: textBlackColor,
                              fontFamily: FontFamily.medium,
                            ),
                            ItemCounter(color: isClicked ? shadowButtonColor: const Color(0xffAAAAAA) , onTap: () {isClicked=!isClicked;  }, isPlus: true,
                            ),
                          ],
                        ),
                        Padding(
                          padding:  EdgeInsets.only(top: 10.h),
                          child: const TabBarItem(),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            AppButton(component: const Text(''),color: primaryColor,top:793.h,start: 24.w,end: 24.w,)
          ],
        ),
      ),
    );
  }
}
