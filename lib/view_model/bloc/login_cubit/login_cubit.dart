import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectaar/view_model/bloc/login_cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(InitState());

  static LoginCubit get(context)=>BlocProvider.of<LoginCubit>(context);

  bool secure = true;

  void obsecurePassword() {
    secure = !secure;
    emit(ObsecureState());
  }

}
