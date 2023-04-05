import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectaar/view/components/product_card.dart';

class ExclusiveOffer extends StatelessWidget {
  ExclusiveOffer({required this.category, Key? key}) : super(key: key);
  String? category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(
            start: 10.w,
            end: 10.w,
          ),
          child: Row(
            children: [
              Text(
                "$category",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 22.sp),
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  "See all",
                  style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 200.h,
          child: ListView.separated(
            padding: EdgeInsetsDirectional.only(
              start: 10.w,
              end: 10.w,
            ),
            itemBuilder: (context, index) => ProductCard(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => SizedBox(
              width: 5.w,
            ),
            itemCount: 5,
          ),
        ),
      ],
    );
  }
}
