import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Baner extends StatelessWidget {
  const Baner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      children: [
        Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Image.asset(
                "assets/back.png",
                fit: BoxFit.cover,
              ).image,
            ),
            borderRadius: BorderRadius.circular(
              10.r,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(flex: 1, child: Image.asset("assets/vege.png")),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Fresh Vegetables",
                      style: GoogleFonts.aclonica(fontSize: 18.sp),
                    ),
                    Text(
                      "Get Up To 40% OFF",
                      style: GoogleFonts.poppins(
                          fontSize: 15.sp, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Image.asset(
          "assets/deco.png",
          fit: BoxFit.cover,
        )
      ],
    );
  }
}
