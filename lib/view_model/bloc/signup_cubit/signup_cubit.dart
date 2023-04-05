import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectaar/view_model/bloc/signup_cubit/signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(InitState());
  static SignupCubit get(context)=> BlocProvider.of<SignupCubit>(context);
  bool secure = true;

  void obsecurePassword() {
    secure = !secure;
    emit(ObsecureState());
  }
}
