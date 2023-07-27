part of 'user_bloc.dart';

abstract class ProfileViewEvents {}

class ProfileViewLoadingEvent extends ProfileViewEvents {}

class ProfileViewSuccessEvent extends ProfileViewEvents {}

class ProfileViewErrorEvent extends ProfileViewEvents {}
