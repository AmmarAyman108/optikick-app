import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:optikick/core/utils/colors.dart';
import 'package:optikick/core/utils/strings.dart';
import 'package:optikick/features/home/presentation/widgets/home_screen_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorsManager.backgroundColor,
        title: SizedBox(
          height: 35.h,
          child: Image.asset(StringManager.homeIcon),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings_outlined,
              color: ColorsManager.realWhiteColor,
              size: 30,
            ),
            tooltip: 'settings',
            onPressed: () {
              // Handle notifications
            },
          ),
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.account_circle,
                color: ColorsManager.realWhiteColor,
                size: 30,
              ),
              tooltip: 'Open Menu',
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
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
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.assessment_outlined,
                  color: ColorsManager.realWhiteColor,
                ),
                title: const Text(
                  'Training Program',
                  style: TextStyle(color: ColorsManager.realWhiteColor),
                ),
                onTap: () {
                  Navigator.pop(context);
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
      ),
      body: const HomeScreenBody(),
    );
  }
}
