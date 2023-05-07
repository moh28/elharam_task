import 'dart:async';

import 'package:elharam_elrabe3/features/splash/view_onboarding.dart';
import 'package:flutter/material.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
            const OnBoardingScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.height,
            decoration:   const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(153, 227, 231, 1),
                    Color.fromRGBO(130, 190, 192, 1),
                    Color.fromRGBO(33, 122, 126, 1.0),
                  ],
                  stops: [
                    0.0,
                    0.28,
                    1.0,
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
