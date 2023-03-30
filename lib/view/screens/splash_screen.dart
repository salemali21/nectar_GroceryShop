import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectaar/view/components/splash.dart';
import 'package:nectaar/view/screens/onboard_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Color(0XFF53B175),
      nextScreen: OnboardScreen(),
      splash: SplashCustom(),
      splashIconSize: double.infinity,
      centered: true,
    );
  }
}
