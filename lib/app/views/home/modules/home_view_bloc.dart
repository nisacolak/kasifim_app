import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kasifim_app/network/local/isar/collection/restaurant_data.dart';
import 'package:kasifim_app/network/local/isar/isar_client.dart';
import 'package:kasifim_app/network/repository/restaurant/restaurant_repository.dart';

part 'home_view.event.dart';
part 'home_view.state.dart';

class HomeViewBloc extends Bloc<HomeViewEvents, HomeViewStates> {
  //  restaurant repository
  final RestaurantRepository _restaurantRepository =
      RestaurantRepository.instance;
  //local database
  final IsarLocalDatabase _isarDatabase = IsarLocalDatabase.instance;

  HomeViewBloc() : super(HomeViewLoadingState()) {
    on<HomeViewLoadingEvent>(_loadingEvent);
    on<HomeViewSuccessEvent>(_successEvent);
    on<HomeViewErrorEvent>(_errorEvent);
  }

  FutureOr<void> _loadingEvent(
      HomeViewLoadingEvent event, Emitter<HomeViewStates> emit) async {
    final service = await _restaurantRepository.getRestaurantService();
    final getRestaurant = await _isarDatabase.getAllRestaurant();
    final getRestaurantCount = await _isarDatabase.getAllRestaurantCount(); 

    if (service == 200) {
      emit(HomeViewSuccessState(getRestaurant,getRestaurantCount));
    } else {
      emit(HomeViewErrorState());
    }
  }

  FutureOr<void> _successEvent(
      HomeViewSuccessEvent event, Emitter<HomeViewStates> emit) {}

  FutureOr<void> _errorEvent(
      HomeViewErrorEvent event, Emitter<HomeViewStates> emit) {}
}
