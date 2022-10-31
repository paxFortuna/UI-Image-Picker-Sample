import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ui_image_picker_sample/my_home_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      // lottie 소스를 json으로 받아서 assets에 저장 후 사용할 것
      splash: Lottie.asset('assets/nike-animation.json'),
      splashIconSize: 250,
      backgroundColor: Colors.black87,
      pageTransitionType: PageTransitionType.rightToLeftWithFade,
      nextScreen: const MyHomePage(title: 'Image Picker Example'),
    );
  }
}
