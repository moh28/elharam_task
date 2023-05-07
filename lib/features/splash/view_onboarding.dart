import 'package:elharam_elrabe3/common_component/widgets/app_button.dart';
import 'package:elharam_elrabe3/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'component/boarding.dart';
import '../../constant.dart';
import '../../core/app_storage/on_boarding_model.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<BoardingModel> boarding = [
    BoardingModel(
      image: 'assets/images/onboarding_1.png',
      title: 'Your style tell about you',
      body: 'There are many clothes with designs that are suitable for you today Body',
    ),
    BoardingModel(
      image: 'assets/images/boarding_2.png',
      title: 'Leave up your lifestyle',
      body: 'There are many clothes with designs that are suitable for you today',
    ),
  ];
  bool isLast = false;

  var boardController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            onPageChanged: (int index) {
              if (index == boarding.length - 1) {
                setState(() {
                  isLast = true;
                });
              } else {
                setState(() {
                  isLast = false;
                });
              }
            },
            controller: boardController,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => ItemBoarding(
              model: boarding[index],
              title: '${boarding[index].title}',
              body: '${boarding[index].body}',
              image: '${boarding[index].image}',
            ),
            itemCount: boarding.length,
          ),
          Padding(
            padding: EdgeInsets.only(top: 690.h),
            child: Container(
              height: 154.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32.w),
                      topRight: Radius.circular(32.w)),
                  color: primaryColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 19.h),
                    child: SmoothPageIndicator(
                      controller: boardController,
                      count: boarding.length,
                      effect: ScrollingDotsEffect(
                        dotColor: const Color(0xffD9D9D9),
                        activeDotColor: Colors.white,
                        dotHeight: 9.h,
                        dotWidth: 9.w,
                        spacing: 10.0.sp,
                        strokeWidth: .1.w,
                        fixedCenter: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 24.5.h,
                    ),
                    child: AppButton(
                      color: shadowButtonColor,
                      width: 342.w,
                      height: 53.h,
                      component: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Continue',
                            style: TextStyle(
                                fontFamily: FontFamily.semiBold,
                                fontSize: 14.sp,color: primaryColor),
                          ),
                           Padding(
                             padding:  EdgeInsetsDirectional.only(start: 8.w),
                             child: Image.asset('assets/images/Arrow 1.png',width:16.w,),
                           ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
