import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:optikick/features/auth/presentation/view/login.dart';
import 'package:optikick/features/bottom_nav/presentation/cubit/bottom_nav_cubit.dart';
import 'package:optikick/features/bottom_nav/presentation/views/bottom_nav_view.dart';
import 'package:optikick/features/home/presentation/pages/home_page.dart';
import 'package:optikick/features/on_boarding/presentation/view/onboarding.dart';
import 'package:optikick/features/player/views/player_view.dart';
import 'package:optikick/features/profile/presentation/view/profile_view.dart';
import 'package:optikick/features/splash/presentation/view/splash_view.dart';
import 'package:optikick/features/stats/presentation/view/stats_view.dart';
import 'package:optikick/features/training_program/presentation/view/traning_program_view.dart';
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
      case RoutesName.home:
        return _buildRoute(HomePage());
      case RoutesName.profile:
      return _buildRoute(ProfileView());
      case RoutesName.stats:
        return _buildRoute(StatsView());
      case RoutesName.trainingProgram:
      return _buildRoute(TraningProgramView());
      case RoutesName.playerView:
        return _buildRoute(PlayerView(playerName: "Salah",));
      
      case RoutesName.bottomNavView:
        return _buildRoute(
          BlocProvider(
            create: (context) => BottomNavCubit(),
            child: const BottomNavView(),
          ),
        );
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
