part of 'home_view_bloc.dart';

abstract class HomeViewStates {}

class HomeViewLoadingState extends HomeViewStates {}

class HomeViewSuccessState extends HomeViewStates {
  HomeViewSuccessState(this.restaurants);
  late final List<RestaurantDatas?> restaurants;
}

class HomeViewErrorState extends HomeViewStates {}
