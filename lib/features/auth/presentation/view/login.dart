import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:optikick/core/constants/assets.dart';
import 'package:optikick/core/widgets/gradient_background.dart';
import 'package:optikick/core/widgets/widgets.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    Assets.imagesLogoTest,
                    height: 150.h,
                    width: 110.w,
                  ),
                ),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5.h),
                SizedBox(
                  width: 300.h,
                  child: Text(
                    'Discover Limitless Choices and Unmatched Convenience ',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                CustomTextField(
                  hint: 'ID',
                  obscureText: false,
                  iconw: Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Image.asset('assets/images/Security Pass.png'),
                  ),
                ),
                SizedBox(height: 20.h),
                CustomTextField(
                  hint: 'Password',
                  obscureText: false,
                  icon: Icons.visibility_off,
                  iconw: Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Image.asset('assets/images/Password.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
