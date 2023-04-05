import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectaar/view/layouts/shop_layout.dart';
import 'package:nectaar/view_model/bloc/home_cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(InitState());

  static HomeCubit get(context) => BlocProvider.of<HomeCubit>(context);

  int currentIndex=0;
  List<Widget>layouts = [ShopLayout(),];
void setCurrentIndex(index){
currentIndex = index;
emit(ChangeLayoutIndex());
}


}
