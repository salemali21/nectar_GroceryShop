import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectaar/view/components/banner.dart';
import 'package:nectaar/view/components/product_card.dart';
import 'package:nectaar/view/layouts/shop_layout.dart';
import 'package:nectaar/view_model/bloc/home_cubit/home_cubit.dart';
import 'package:nectaar/view_model/bloc/home_cubit/home_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        return Scaffold(
          body: SafeArea(
            child: cubit.layouts[cubit.currentIndex],
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) => cubit.setCurrentIndex(index),
            currentIndex: cubit.currentIndex,
            unselectedItemColor: Colors.black,
            selectedIconTheme: IconThemeData(
              color: Colors.green,
            ),
            selectedItemColor: Colors.green,
            showUnselectedLabels: true,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.store,
                ),
                label: "Shop",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.explore,
                ),
                label: "Explore",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                ),
                label: "Cart",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                ),
                label: "Favorite",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline_outlined,
                ),
                label: "Account",
              ),
            ],
          ),
        );
      },
    );
  }
}
