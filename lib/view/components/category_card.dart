import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectaar/view/screens/productDetails_screen.dart';
import 'package:nectaar/view_model/navigation/navigation.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int randomColor = (math.Random().nextDouble() * 0xFFF8A44CB2).toInt();
    return Material(
      borderRadius: BorderRadius.circular(
        15.r,
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        onTap: () {
          Navigation.push(
            context,
            ProductDetails(),
          );
        },
        child: SizedBox(
          height: 160.h,
          width: 160.w,
          child: Card(
            color: Color(randomColor).withOpacity(.2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                15.r,
              ),
              side: BorderSide(
                color: Color(randomColor),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.all(10.w),
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Image.asset(
                      "assets/banana.png",
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                    width: double.infinity,
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      "Frash Fruits & Vegetable",
                      style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        height: 1,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
