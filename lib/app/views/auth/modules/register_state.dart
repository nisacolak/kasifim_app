part of 'register_bloc.dart';

abstract class RegisterStates {}

class RegisterInitial extends RegisterStates {}

class RegisterSuccessState extends RegisterStates {}

class RegisterSendState extends RegisterStates {}

class RegisterErrorState extends RegisterStates {}
