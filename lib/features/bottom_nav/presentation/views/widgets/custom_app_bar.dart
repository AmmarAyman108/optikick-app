import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:optikick/core/utils/colors.dart';
import 'package:optikick/core/utils/strings.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: ColorsManager.backgroundColor,
      title: currentIndex == 0
          ? SizedBox(
              height: 35.h,
              child: Image.asset(StringManager.homeIcon),
            )
          : Text(
              currentIndex == 1 ? "Notifications" : "Messages",
              style: TextStyle(
                fontSize: 20.sp,
                color: ColorsManager.realWhiteColor,
              ),
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
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
