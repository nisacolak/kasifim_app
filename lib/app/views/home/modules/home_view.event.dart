part of 'home_view_bloc.dart';

abstract class HomeViewEvents {}

class HomeViewLoadingEvent extends HomeViewEvents {}

class HomeViewSuccessEvent extends HomeViewEvents {}

class HomeViewErrorEvent extends HomeViewEvents {}
