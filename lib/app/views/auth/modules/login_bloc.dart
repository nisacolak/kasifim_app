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
    final service =
        await _loginRepository.loginService(event.email, event.password);
    if (service == 200) {
      OneContext().pushNamed('/home-body');
    } else if (service == 400) {
      showErrorSnackbar('Hata: Şifre yanlış 400');
    } else {
      showErrorSnackbar('Hata: sonra deneyin');
    }
  }

  FutureOr<void> _sendEvent(LoginSendEvent event, Emitter<LoginStates> emit) {}

  FutureOr<void> _errorEvent(event, Emitter<LoginStates> emit) {}
}
