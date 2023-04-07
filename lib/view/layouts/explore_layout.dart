import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectaar/view/components/category_card.dart';

class ExploreLayout extends StatelessWidget {
  const ExploreLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 10.h,
            ),
            Text(
              "Find Products",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                prefixIcon: Icon(
                  Icons.search,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15.r),
                ),
                hintText: "Search Store",
                hintStyle: GoogleFonts.poppins(),
                fillColor: Color(0xffF2F3F2),
                prefixIconColor: Colors.black,
              ),
            ),
            SizedBox(height: 15.h,),
            GridView.count(
              childAspectRatio: 3/3,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              children: List.generate(10, (index) => CategoryCard()),
            )
          ],
        ),
      ),
    );
  }
}
