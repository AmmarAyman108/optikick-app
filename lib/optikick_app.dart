import 'package:optikick/core/routes/app_router.dart';

import 'package:flutter/material.dart';
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
        initialRoute: RoutesName.splash,
        theme: ThemeData(
          fontFamily: 'Poppins',
        ),
        onGenerateRoute: AppRouter.generate,
      ),
    );
  }
}
