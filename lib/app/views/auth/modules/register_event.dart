part of 'register_bloc.dart';

abstract class RegisterEvents {}

class RegisterInitialEvent extends RegisterEvents {}

class RegisterSuccessEvent extends RegisterEvents {
  RegisterSuccessEvent(
      {required this.name, required this.email, required this.password});
  String name;
  String email;
  String password;
}

class RegisterSendEvent extends RegisterEvents {}

class RegisterErrorEvent extends RegisterEvents {}
