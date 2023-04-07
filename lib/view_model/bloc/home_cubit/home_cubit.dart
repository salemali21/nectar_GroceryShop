import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectaar/view/layouts/account_layout.dart';
import 'package:nectaar/view/layouts/cart_layout.dart';
import 'package:nectaar/view/layouts/explore_layout.dart';
import 'package:nectaar/view/layouts/favorite_layout.dart';
import 'package:nectaar/view/layouts/shop_layout.dart';
import 'package:nectaar/view_model/bloc/home_cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(InitState());

  static HomeCubit get(context) => BlocProvider.of<HomeCubit>(context);


  List<Widget>layouts = [ShopLayout(),ExploreLayout(),CartLayout(),FavoriteLayout(),AccountLayout()];
  int currentIndex=0;

void setCurrentIndex(index){
currentIndex = index;
emit(ChangeLayoutIndex());
}


}
