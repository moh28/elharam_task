import 'package:elharam_elrabe3/common_component/widgets/app_bar.dart';
import 'package:elharam_elrabe3/constant.dart';
import 'package:flutter/material.dart';
class MySlider extends StatelessWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const CustomAppBar(),
      body: Stack(
        children: [
          Container(
            color: primaryColor,
          ),
          Column(
            children: [

            ],
          )
        ],
      ),
    );
  }
}
