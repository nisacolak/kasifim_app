part of 'user_bloc.dart';

abstract class ProfileViewStates {}

class ProfileViewLoadingState extends ProfileViewStates {}

class ProfileViewSuccessState extends ProfileViewStates {
  ProfileViewSuccessState(
    this.userData,
  );
  late final List<UserDatas?> userData;
}

class ProfileViewErrorState extends ProfileViewStates {}
