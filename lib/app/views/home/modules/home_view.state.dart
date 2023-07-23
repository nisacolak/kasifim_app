part of 'home_view_bloc.dart';

abstract class HomeViewStates {}

class HomeViewLoadingState extends HomeViewStates {}

class HomeViewSuccessState extends HomeViewStates {
  HomeViewSuccessState(this.restaurants,this.restaurantCount);
  late final List<RestaurantDatas?> restaurants;
  final int restaurantCount; 
}

class HomeViewErrorState extends HomeViewStates {}
