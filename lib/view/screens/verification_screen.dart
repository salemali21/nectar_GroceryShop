import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectaar/view/screens/selectLocation_screen.dart';
import 'package:nectaar/view_model/navigation/navigation.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
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
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/top_color.png",
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80.h,
                ),
                Text(
                  "Enter your 4-digit code",
                  style: GoogleFonts.poppins(
                      fontSize: 18.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 100.h,
                ),
                PinCodeTextField(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  keyboardType: TextInputType.number,
                  enableActiveFill: true,
                  appContext: context,
                  autoFocus: true,
                  pinTheme: PinTheme(
                      activeColor: Colors.grey,
                      activeFillColor: Colors.grey[300],
                      fieldHeight: 50.h,
                      fieldWidth: 40.w,
                      selectedFillColor: Colors.white,
                      inactiveColor: Colors.grey,
                      inactiveFillColor: Colors.white),
                  length: 4,
                  onChanged: (v) {
                    print(v);
                  },
                  onCompleted: (v) {
                    if (v == "1234") {
                      Navigation.push(context, SelectLocationScreen());
                    } else {
                      Fluttertoast.showToast(
                        msg: "Enter from 1 to 4",
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                      );
                    }
                  },
                ),
                SizedBox(
                  height: 50.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularCountDownTimer(
                      initialDuration: 0,
                      isReverseAnimation: true,
                      strokeWidth: 8.r,
                      onComplete: () {
                         TextButton(
                          onPressed: () {},
                          child: Text(
                            "Resend Code",
                            style: GoogleFonts.poppins(
                                fontSize: 15.sp, color: Color(0xff53b175)),
                          ),
                        );
                      },
                      isReverse: true,
                      width: 100.w,
                      height: 100.h,
                      duration: 60,
                      fillColor: Color(
                        0xff53B175,
                      ),
                      ringColor: Colors.grey,
                    ),
                  ],
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Resend Code",
                    style: GoogleFonts.poppins(
                        fontSize: 15.sp, color: Color(0xff53B175)),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                )
              ],
            ),
          )
        ],
      ),
      floatingActionButton: SizedBox(
        width: 67.w,
        height: 67.h,
        child: FloatingActionButton(
          elevation: 0.0,
          onPressed: () {
            Navigation.push(
              context,
              SelectLocationScreen(),
            );
          },
          backgroundColor: Color(
            0xff53B175,
          ),
          child: Icon(
            Icons.arrow_forward_ios,
          ),
        ),
      ),
    );
  }
}
