import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:kasifim_app/app/widgets/show_snackbar.dart';
import 'package:kasifim_app/network/repository/auth/login_repository.dart';
import 'package:one_context/one_context.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvents, LoginStates> {
  final LoginRepository _loginRepository = LoginRepository.instance;
  LoginBloc() : super(LoadingInitial()) {
    on<LoginInitialEvent>(_loadingEvent);
    on<LoginSuccessEvent>(_successEvent);
    on<LoginSendEvent>(_sendEvent);
    on<LoginErrorEvent>(_errorEvent);
  }

  FutureOr<void> _loadingEvent(
      LoginInitialEvent event, Emitter<LoginStates> emit) {
    emit(LoginSuccessState());
  }

  FutureOr<void> _successEvent(
      LoginSuccessEvent event, Emitter<LoginStates> emit) async {
    // bool isEmailValid(String email) {
    //   final RegExp regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    //   return regex.hasMatch(email);
    // }

    // if (!isEmailValid(event.email)) {
    //   showErrorSnackbar('Invalid email');
    //   return;
    // }

    final service =
        await _loginRepository.loginService(event.email, event.password);

    if (service == 200) {
      OneContext().pushNamed('/home-body');
    } else if (service == 400) {
      showErrorSnackbar('email or password is incorrect');
    } else {
      showErrorSnackbar('email or password is incorrect');
    }
  }

  FutureOr<void> _sendEvent(LoginSendEvent event, Emitter<LoginStates> emit) {}

  FutureOr<void> _errorEvent(event, Emitter<LoginStates> emit) {}
}
