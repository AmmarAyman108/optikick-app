import 'package:flutter/material.dart';
import 'package:optikick/features/auth/presentation/view/login.dart';
import 'package:optikick/features/on_boarding/presentation/view/onboarding.dart';
import 'package:optikick/features/splash/presentation/view/splash_view.dart';
import 'routes.dart';

class AppRouter {
  static Route<dynamic> generate(RouteSettings? settings) {
    switch (settings?.name) {
      case RoutesName.splash:
        return _buildRoute(SplashView());
      case RoutesName.onBoarding:
        return _buildRoute(OnboardingView());
      case RoutesName.login:
        return _buildRoute(const LoginView());
      default:
        return _buildRoute(
          const Scaffold(
            body: Center(
              child: Text('No route defined for ${RoutesName.splash}'),
            ),
          ),
        );
    }
  }

  static MaterialPageRoute<dynamic> _buildRoute(Widget screen) {
    return MaterialPageRoute(builder: (_) => screen);
  }
}
