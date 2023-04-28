import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectaar/view_model/bloc/productDetails_cubit/product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(InitState());

  static ProductCubit get(context) => BlocProvider.of<ProductCubit>(context);
  bool isFavorite = false;
  bool isVisible = false;
  int counter = 1;
  num? price;

  void incrementCounter() {
    counter++;
    emit(IncrementCounter());
  }

  void decrementCounter() {
    if (counter > 1) {
      counter--;
      emit(DecrementCounter());
    } else
      print("Minimum Quantity");
  }

  void changeFavorite() {
    isFavorite = !isFavorite;
    emit(ChangeFavoriteColor());
  }

  void changeVisibility() {
    isVisible = !isVisible;
    emit(ChangeVisibility());
  }

  num remainer(counter) {
   return price = ((counter * 4.99) * 100).round() / 100;
  }
}
