import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget SplashCustom() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/carrot.png",
            width: 55.w,
          ),
          SizedBox(
            width: 15.w,
          ),
          Column(
            children: [
              Image.asset(
                "assets/nectar_typo.png",
                width: 195.w,
              ),
              Text(
                "online groceriet",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 23.sp,
                ),
              )
            ],
          )
        ],
      ),
    ],
  );
}
