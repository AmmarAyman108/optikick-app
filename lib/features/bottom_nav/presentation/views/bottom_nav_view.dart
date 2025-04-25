import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:optikick/core/utils/colors.dart';
import 'package:optikick/features/bottom_nav/presentation/cubit/bottom_nav_cubit.dart';
import 'package:optikick/features/bottom_nav/presentation/views/widgets/custom_app_bar.dart';
import 'package:optikick/features/bottom_nav/presentation/views/widgets/custom_drawer.dart';

class BottomNavView extends StatelessWidget {
  const BottomNavView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, BottomNavState>(
      builder: (context, state) {
        final cubit = BlocProvider.of<BottomNavCubit>(context);
        return Scaffold(
          extendBody: true,
          body: Stack(
            children: [
              Column(
                children: [
                  Container(
                    color: ColorsManager.backgroundColor,
                    height: MediaQuery.of(context).padding.top,
                  ),
                  CustomAppBar(currentIndex: cubit.currentIndex),
                  Expanded(child: cubit.screens[cubit.currentIndex]),
                  SizedBox(
                    height: 40.h,
                  )
                ],
              ),
            ],
          ),
          bottomNavigationBar: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 78, 94, 89),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(39.r),
                  topRight: Radius.circular(39.r),
                ),
              ),
              height: 59.h,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildBottomAppBarItem(
                    context: context,
                    icon: Icons.home,
                    label: 'Home',
                    index: 0,
                    currentIndex: cubit.currentIndex,
                    onTap: () => cubit.changeIndex(index: 0, context: context),
                  ),
                  _buildBottomAppBarItem(
                    context: context,
                    icon: Icons.notifications_none,
                    label: 'Notifications',
                    index: 1,
                    currentIndex: cubit.currentIndex,
                    onTap: () => cubit.changeIndex(index: 1, context: context),
                  ),
                  _buildBottomAppBarItem(
                    context: context,
                    icon: Icons.email_outlined,
                    label: 'Email',
                    index: 2,
                    currentIndex: cubit.currentIndex,
                    onTap: () => cubit.changeIndex(index: 2, context: context),
                  ),
                ],
              ),
            ),
          ),
          drawer: const CustomDrawer(),
        );
      },
    );
  }

  Widget _buildBottomAppBarItem({
    required BuildContext context,
    required IconData icon,
    required String label,
    required int index,
    required int currentIndex,
    required VoidCallback onTap,
  }) {
    final isSelected = index == currentIndex;
    return Expanded(
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Icon(
          icon,
          size: 30,
          color: isSelected
              ? Colors.white
              : const Color.fromARGB(255, 175, 175, 175),
        ),
      ),
    );
  }
}
