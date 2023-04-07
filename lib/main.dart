import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectaar/view/screens/home_screen.dart';
import 'package:nectaar/view/screens/splash/splash_screen.dart';
import 'package:nectaar/view_model/bloc/home_cubit/home_cubit.dart';
import 'package:nectaar/view_model/bloc/login_cubit/login_cubit.dart';
import 'package:nectaar/view_model/bloc/productDetails_cubit/product_cubit.dart';
import 'package:nectaar/view_model/bloc/signup_cubit/signup_cubit.dart';

import 'view_model/local/shared_preferences/shared_preferences_key.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreference.initShared();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SignupCubit(),
        ),
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
        BlocProvider(
          create: (context) => HomeCubit(),
        ),BlocProvider(
          create: (context) => ProductCubit(),
        )
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SplashScreen(),
          );
        },
      ),
    );
  }
}
