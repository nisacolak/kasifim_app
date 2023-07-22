part of 'login_bloc.dart';

abstract class LoginStates {}

class LoadingInitial extends LoginStates {}

class LoginSuccessState extends LoginStates {}

class LoginSendState extends LoginStates {}

class LoginErrorState extends LoginStates {}
