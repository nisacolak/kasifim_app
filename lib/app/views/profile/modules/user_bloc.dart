import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kasifim_app/network/local/isar/collection/user_data.dart';
import 'package:kasifim_app/network/local/isar/isar_client.dart';
import 'package:kasifim_app/network/repository/user/user_repository.dart';

part 'user_event.dart';
part 'user_state.dart';

class ProfileViewBloc extends Bloc<ProfileViewEvents, ProfileViewStates> {
  final UserRepository _userRepository = UserRepository.instance;

  final IsarLocalDatabase _isarDatabase = IsarLocalDatabase.instance;

  ProfileViewBloc() : super(ProfileViewLoadingState()) {
    on<ProfileViewLoadingEvent>(_loadingEvent);
    on<ProfileViewSuccessEvent>(_successEvent);
    on<ProfileViewErrorEvent>(_errorEvent);
  }

  FutureOr<void> _loadingEvent(
      ProfileViewLoadingEvent event, Emitter<ProfileViewStates> emit) async {
    final service = await _userRepository.getUserService();
    final getUser = await _isarDatabase.getUser();

    if (service == 200) {
      emit(ProfileViewSuccessState(getUser));
    } else {
      emit(ProfileViewErrorState());
    }
  }

  FutureOr<void> _successEvent(
      ProfileViewSuccessEvent event, Emitter<ProfileViewStates> emit) {}

  FutureOr<void> _errorEvent(
      ProfileViewErrorEvent event, Emitter<ProfileViewStates> emit) {}
}
