import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:optikick/core/routes/routes.dart';
import 'package:optikick/core/utils/colors.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 4, 21, 10),
              Color.fromARGB(255, 40, 59, 52),
              Color(0xff5D6E68),
            ],
            stops: [0.0, 0.7, 1.0],
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.account_circle,
                    size: 30.h,
                    color: ColorsManager.textIconColor,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "Dr. Derek Shepherd",
                    style: TextStyle(
                      fontSize: 17.sp,
                      color: ColorsManager.realWhiteColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "@Dshepherd",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: ColorsManager.realWhiteColor,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.person_2_outlined,
                color: ColorsManager.realWhiteColor,
              ),
              title: const Text(
                'Profile',
                style: TextStyle(color: ColorsManager.realWhiteColor),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, RoutesName.profile);
              },
            ),
            ListTile(
              leading: const Icon(
                Symbols.vital_signs,
                color: ColorsManager.realWhiteColor,
              ),
              title: const Text(
                'Stats',
                style: TextStyle(color: ColorsManager.realWhiteColor),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, RoutesName.stats);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.assignment_outlined,
                color: ColorsManager.realWhiteColor,
              ),
              title: const Text(
                'Training Program',
                style: TextStyle(color: ColorsManager.realWhiteColor),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, RoutesName.trainingProgram);
              },
            ),
            ListTile(
              leading: const Icon(
                Symbols.stethoscope,
                color: ColorsManager.textIconColor,
              ),
              title: const Text(
                'Request an Assessment',
                style: TextStyle(color: ColorsManager.realWhiteColor),
              ),
              onTap: () {
                Navigator.pop(context);
                //  Navigator.pushNamed(context, RoutesName.submitNewAssesmentRequest);// as PLayerView;
                Navigator.pushNamed(
                    context, RoutesName.viewAllAssessmentRequests); // as A Admin and Coach
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: SizedBox(
                width: 90.w,
                child: const Divider(
                  color: ColorsManager.realGreyColor,
                  thickness: 0.5,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: ColorsManager.textIconColor,
              ),
              title: const Text(
                'Settings & Privacy',
                style: TextStyle(color: ColorsManager.realWhiteColor),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.help_outline,
                color: ColorsManager.textIconColor,
              ),
              title: const Text(
                'Help Centre',
                style: TextStyle(color: ColorsManager.realWhiteColor),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.exit_to_app_outlined,
                color: ColorsManager.textIconColor,
              ),
              title: const Text(
                'Log Out',
                style: TextStyle(color: ColorsManager.realWhiteColor),
              ),
              onTap: () {
                // Handle logout
              },
            ),
          ],
        ),
      ),
    );
  }
}
