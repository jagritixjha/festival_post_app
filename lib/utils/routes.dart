import 'package:festival_poster_app/views/detail_screen.dart';
import 'package:festival_poster_app/views/home_screen.dart';
import 'package:festival_poster_app/views/splash_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();
  static Routes navigateTo = Routes._();

  String homeScreen = '/', detailsScreen = 'detailsScreen';

  static Map<String, WidgetBuilder> screens = {
    '/': (context) => const SplashScreen(),
    'homeScreen': (context) => const HomeScreen(),
    'detailsScreen': (context) => const DetailsScreen(),
  };
}
