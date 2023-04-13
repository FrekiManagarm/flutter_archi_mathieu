import 'package:flutter_custom_archi/core/app_export.dart';
import 'package:flutter_custom_archi/presentation/main_screen/main_screen.dart';
import 'package:flutter_custom_archi/presentation/register_screen/register_screen.dart';

class AppRoutes {
  static const String homeScreen = '/home';
  static const String registerScreen = '/register';
  static const String loginScreen = '/login';
  // TODO ADD NEW PAGES STRINGS HERE

  static final router = GoRouter(
    routes: routes,
    initialLocation: homeScreen, // TODO IF YOU WANT TO CHANGE THE HOME ROUTE
  );

  static List<RouteBase> routes = [
    GoRoute(
      path: homeScreen,
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: registerScreen,
      builder: (context, state) => const RegisterScreen(),
    ),
  ];
}
