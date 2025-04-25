import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:optikick/core/widgets/custom_gradient_button.dart';
import 'package:optikick/core/widgets/gradient_background.dart';
import 'package:optikick/core/widgets/widgets.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon:
                        const Icon(Icons.close, color: Colors.white, size: 30),
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  'Enter Your New  Password',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5.h),
                SizedBox(
                  width: 350.h,
                  child: Text(
                    'Don’t worry sometimes people can forget too, enter your new password and make it easy for you to remember.',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    border: Border.all(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      width: 2,
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/Password.png'),
                      Expanded(
                        child: CustomTextField(
                          hint: 'Enter Your New Password',
                          isPassword: true,
                          icon: Icons.visibility_off,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    border: Border.all(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      width: 2,
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/Password.png'),
                      Expanded(
                        child: CustomTextField(
                          hint: 'Rewrite Your New Password',
                          isPassword: true,
                          icon: Icons.visibility_off,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                CustomGradientButton(
                  title: 'Submit',
                  onTap: () {
                    // Handle login action
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
