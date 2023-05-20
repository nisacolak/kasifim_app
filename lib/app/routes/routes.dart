import 'package:flutter/material.dart';
import 'package:kasifim_app/app/views/auth/view/change_password_success.dart';
import 'package:kasifim_app/app/views/auth/view/change_password_view.dart';
import 'package:kasifim_app/app/views/auth/view/forgot_password_success.dart';
import 'package:kasifim_app/app/views/auth/view/forgot_password_view.dart';
import 'package:kasifim_app/app/views/auth/view/login_view.dart';
import 'package:kasifim_app/app/views/detail/restaurant_detail_view.dart';

import 'package:kasifim_app/app/views/home/home_body_view.dart';
import 'package:kasifim_app/app/views/home/home_view.dart';
import 'package:kasifim_app/app/views/search/search_view.dart';
import 'package:kasifim_app/app/views/splash/splash_screen.dart';
import 'package:kasifim_app/app/views/welcome/welcome_page.dart';

Map<String, WidgetBuilder> get pageRoutes {
  return {
    '/': (context) => Splash(),
    '/welcome': (context) => const Welcome(),
    '/login': (context) => const LoginView(),
    '/forgot-password': (context) => ForgotPassword(),
    '/forgot-password-success': (context) => ForgotPasswordSuccess(),
    '/change-password': (context) => ChangePassword(),
    '/change-password-success': (context) => ChangePasswordSuccess(),
    '/home-body': (context) => CustomNavBar(),
    '/home': (context) => const HomeView(),
    '/search': (context) => const SearchView(),
    '/restaurant-detail': (context) => RestaurantDetail(),
  };
}
