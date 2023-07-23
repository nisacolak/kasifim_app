part of 'register_bloc.dart';

abstract class RegisterStates {}

class RegisterInitial extends RegisterStates {
    RegisterInitial(this.value); 
  final int value; 
}

class RegisterSuccessState extends RegisterStates {}

class RegisterSendState extends RegisterStates {}

class RegisterErrorState extends RegisterStates {}
