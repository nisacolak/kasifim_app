part of 'user_bloc.dart';

abstract class ProfileViewStates {}

class ProfileViewLoadingState extends ProfileViewStates {}

class ProfileViewSuccessState extends ProfileViewStates {
  ProfileViewSuccessState(
    this.data,
  );
  late final List<UserDatas?> data;
}

class ProfileViewErrorState extends ProfileViewStates {}
