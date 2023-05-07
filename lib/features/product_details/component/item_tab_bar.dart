import 'package:elharam_elrabe3/common_component/widgets/app_button.dart';
import 'package:elharam_elrabe3/common_component/widgets/app_input.dart';
import 'package:elharam_elrabe3/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common_component/widgets/app_text.dart';
import '../../../constant.dart';

class TabBarItem extends StatefulWidget {
  const TabBarItem({Key? key}) : super(key: key);

  @override
  State<TabBarItem> createState() => _TabBarItemState();
}

class _TabBarItemState extends State<TabBarItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 127.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TabBar(
            tabs: const [
              Tab(
                text: 'Description',
              ),
              Tab(
                text: 'Reviews',
              )
            ],
            labelPadding: EdgeInsetsDirectional.only(
              start: 0.0,
              end: 49.w,
            ),
            indicatorColor: primaryColor,
            labelColor: primaryColor,
            unselectedLabelColor: const Color(0xff717171),
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: EdgeInsetsDirectional.only(
              start: 0.0,
              end: 49.w,
            ),
            isScrollable: true,
          ),
          const Divider(),
          Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: SizedBox(
              width: double.infinity,
              height: 587.h,
              child: TabBarView(children: [
                const Text('desc'),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 48.h,
                          width: 48.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(56.w),
                              color:
                                  const Color.fromRGBO(255, 219, 209, 0.4)),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(start: 16.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const AppText(
                                text: 'Ahmed Solia',
                                color: textBlackColor,
                                fontFamily: FontFamily.medium,
                              ),
                              AppText(
                                text: '1/20/2023',
                                size: 12.sp,
                              )
                            ],
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: EdgeInsetsDirectional.only(top: 10.h),
                          child: Row(
                            children: [
                              Image(
                                width: 24.w,
                                height: 24.h,
                                image: const AssetImage(
                                    'assets/images/Star 1 (1).png'),
                              ),
                              AppText(
                                start: 4.w,
                                text: '4.3',
                                color: textBlackColor,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    AppText(
                      text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit inte',
                      size: 12.sp,
                      top: 8.h,
                      bottom: 24.h,
                    ),
                    Container(
                      height: 442.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.w),
                        border: Border.all(
                            color: const Color(0xff858585), width: .2.w),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.only(
                            start: 14.w, end: 14.w, top: 16.h, bottom: 23.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const AppText(
                                text:
                                    'Your email address will not be published.'),
                            const AppText(
                                text: 'Required fields are marked *'),
                            AppInput(
                              top: 16.h,
                              bottom: 19.h,
                            ),
                            const AppInput(),
                            AppInput(
                              top: 16.h,
                              bottom: 18.h,
                              maxLines: 5,
                            ),
                            const AppButton(
                              component: Text(''),
                              color: shadowButtonColor,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
