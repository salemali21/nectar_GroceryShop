import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectaar/view_model/bloc/productDetails_cubit/product_cubit.dart';
import 'package:nectaar/view_model/bloc/productDetails_cubit/product_state.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductCubit, ProductState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = ProductCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.file_upload_outlined,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          extendBodyBehindAppBar: true,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                        30.r,
                      ),
                      bottomRight: Radius.circular(
                        30.r,
                      ),
                    ),
                    color: Color(
                      0xffF2F3F2,
                    ),
                  ),
                  child: Image.asset(
                    "assets/banana.png",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.w,
                    right: 10.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Naturel Red Apple",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.sp,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              cubit.changeFavorite();
                            },
                            icon: cubit.isFavorite
                                ? Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                : Icon(
                                    Icons.favorite_border,
                                  ),
                          ),
                        ],
                      ),
                      Text(
                        "1kg, Price",
                        style: GoogleFonts.poppins(
                          color: Color(
                            0xff7C7C7C,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              cubit.decrementCounter();
                            },
                            icon: Icon(
                              FontAwesomeIcons.minus,
                            ),
                          ),
                          Container(
                            width: 50.w,
                            height: 50.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                strokeAlign: BorderSide.strokeAlignOutside,
                                width: 2.w,
                                color: Color(
                                  0xffE2E2E2,
                                ),
                              ),
                              borderRadius: BorderRadius.circular(
                                15.r,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "${cubit.counter}",
                                style: GoogleFonts.poppins(
                                  fontSize: 20.sp,
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              cubit.incrementCounter();
                            },
                            icon: Icon(
                              FontAwesomeIcons.plus,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "\$${cubit.remainer(cubit.counter)}",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Divider(
                        thickness: 1.h,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Visibility(
                        visible: cubit.isVisible,
                        replacement: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Product Detail",
                                    style: GoogleFonts.poppins(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    cubit.changeVisibility();
                                  },
                                  icon: Icon(
                                    FontAwesomeIcons.angleRight,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Product Detail",
                                    style: GoogleFonts.poppins(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    cubit.changeVisibility();
                                  },
                                  icon: Icon(
                                    FontAwesomeIcons.angleDown,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              style: GoogleFonts.poppins(
                                color: Color(
                                  0xff7C7C7C,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Divider(
                        thickness: 1.h,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Review",
                              style: GoogleFonts.poppins(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          RatingBar(
                            initialRating: 3,
                            itemSize: 30.w,
                            glow: false,
                            itemCount: 5,
                            allowHalfRating: true,
                            ratingWidget: RatingWidget(
                              full: Icon(
                                Icons.star,
                                color: Color(0xffF3603F),
                              ),
                              half: Icon(
                                Icons.star_half,
                                color: Color(
                                  0xffF3603F,
                                ),
                              ),
                              empty: Icon(
                                Icons.star_border,
                                color: Color(
                                  0xffF3603F,
                                ),
                              ),
                            ),
                            onRatingUpdate: (rate) {
                              print(rate);
                            },
                          ),
                          SizedBox(
                            width: 7.w,
                          ),
                          Icon(
                            FontAwesomeIcons.angleRight,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Align(
                        alignment: AlignmentDirectional.center,
                        child: Container(
                          width: 315.w,
                          height: 50.h,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(
                                0XFF53B175,
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Add To Basket",
                              style: GoogleFonts.poppins(),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
