import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:via_commuter/presentation/screens/home_screen.dart';
import 'package:via_commuter/presentation/screens/onboarding_screen.dart';
import 'package:via_commuter/presentation/screens/main_screen.dart';
import 'package:via_commuter/presentation/screens/settings_screen.dart';

class AppRouter {
  // Define the routes using GoRouter
  static final List<RouteBase> routes = [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: '/onboarding',
      builder: (BuildContext context, GoRouterState state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) => const MainScreen(),
    ),
    GoRoute(
      path: '/settings',
      builder: (BuildContext context, GoRouterState state) => const SettingsScreen(),
    ),
  ];

  // The old generateRoute method is no longer needed with go_router
  /*
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
    // Add more routes here as you build
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('No route defined')),
          ),
        );
    }
  }
  */
}
