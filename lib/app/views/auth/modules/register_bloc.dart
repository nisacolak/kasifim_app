import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:kasifim_app/app/widgets/show_snackbar.dart';
import 'package:kasifim_app/network/repository/auth/register_repository.dart';
import 'package:one_context/one_context.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvents, RegisterStates> {
  RegisterBloc() : super(RegisterInitial(0)) {
    on<RegisterInitialEvent>(_initialEvent);
    on<RegisterSuccessEvent>(_successEvent);
    on<RegisterSendEvent>(_sendEvent);
    on<RegisterErrorEvent>(_errorEvent);
  }
  final RegisterRepository _registerRepository = RegisterRepository.instance;

  // FutureOr<void> _loadingEvent(
  //     RegisterInitialEvent event, Emitter<RegisterStates> emit) {
  //   emit(RegisterSuccessState());
  // }

  // FutureOr<void> _successEvent(
  //     RegisterSuccessEvent event, Emitter<RegisterStates> emit) async {
  //   final service = await _registerRepository.registerService(
  //       event.name, event.email, event.password);
  //   if (service == 200) {
  //     OneContext().pushNamed('/home-body');
  //   } else if (service == 400) {
  //     showErrorSnackbar('Hata: Şifre yanlış 400');
  //   } else {
  //     showErrorSnackbar('Hata: sonra deneyin');
  //   }
  // }

  // FutureOr<void> _sendEvent(
  //     RegisterSendEvent event, Emitter<RegisterStates> emit) {}

  // FutureOr<void> _errorEvent(event, Emitter<RegisterStates> emit) {}

  FutureOr<void> _initialEvent(
      RegisterInitialEvent event, Emitter<RegisterStates> emit) {
    emit(RegisterSuccessState());
  }

  FutureOr<void> _successEvent(
      RegisterSuccessEvent event, Emitter<RegisterStates> emit) async {
        bool isEmailValid(String email) {
      final RegExp regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
      return regex.hasMatch(email);
    }

    if (!isEmailValid(event.email)) {
      showErrorSnackbar('Invalid email ');
      return;
    }
    final service = await _registerRepository.registerService(
        event.name, event.email, event.password);
    if (service == 200) {
      OneContext().pushNamed('/home-body');
    } else {
      showErrorSnackbar('error');
    }
  }

  FutureOr<void> _sendEvent(
      RegisterSendEvent event, Emitter<RegisterStates> emit) {}

  FutureOr<void> _errorEvent(
      RegisterErrorEvent event, Emitter<RegisterStates> emit) {}
}
