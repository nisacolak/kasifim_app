part of 'login_bloc.dart';

abstract class LoginEvents {}

class LoginInitialEvent extends LoginEvents {}

class LoginSuccessEvent extends LoginEvents {
  LoginSuccessEvent({required this.email, required this.password});

  String email;
  String password;
}

class LoginSendEvent extends LoginEvents {}

class LoginErrorEvent extends LoginEvents {}
