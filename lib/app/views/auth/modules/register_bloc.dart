import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:kasifim_app/app/widgets/show_snackbar.dart';
import 'package:kasifim_app/network/repository/auth/register_repository.dart';
import 'package:one_context/one_context.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvents, RegisterStates> {
  final RegisterRepository _registerRepository = RegisterRepository.instance;
  RegisterBloc() : super(RegisterInitial()) {
    on<RegisterInitialEvent>(_loadingEvent);
    on<RegisterSuccessEvent>(_successEvent);
    on<RegisterSendEvent>(_sendEvent);
    on<RegisterErrorEvent>(_errorEvent);
  }
  FutureOr<void> _loadingEvent(
      RegisterInitialEvent event, Emitter<RegisterStates> emit) {
    emit(RegisterSuccessState());
  }

  FutureOr<void> _successEvent(
      RegisterSuccessEvent event, Emitter<RegisterStates> emit) async {
    final service = await _registerRepository.registerService(
        event.name, event.email, event.password);
    if (service == 200) {
      OneContext().pushNamed('/home-body');
    } else if (service == 400) {
      showErrorSnackbar('Hata: Şifre yanlış 400');
    } else {
      showErrorSnackbar('Hata: sonra deneyin');
    }
  }

  FutureOr<void> _sendEvent(
      RegisterSendEvent event, Emitter<RegisterStates> emit) {}

  FutureOr<void> _errorEvent(event, Emitter<RegisterStates> emit) {}
}
