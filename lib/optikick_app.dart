import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:optikick/core/routes/app_router.dart';

import 'package:flutter/material.dart';
import 'package:optikick/features/bottom_nav/presentation/cubit/bottom_nav_cubit.dart';
import 'package:optikick/features/bottom_nav/presentation/views/bottom_nav_view.dart';
import 'package:optikick/features/home/presentation/pages/home_page.dart';
import 'core/routes/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OptikickApp extends StatelessWidget {
  const OptikickApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
          initialRoute:RoutesName.splash,
        // home: BlocProvider(
        //   create: (context) => BottomNavCubit(),
        //   child: BottomNavView(),
        // ), // RoutesName.splash,
         onGenerateRoute: AppRouter.generate,
      ),
    );
  }
}
