import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          appBar: CustomAppBar(currentIndex: cubit.currentIndex),
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: const Color.fromARGB(255, 175, 175, 175),
            selectedFontSize: 1,
            unselectedFontSize: 1,
            iconSize: 30,
            backgroundColor: Color.fromARGB(255, 78, 94, 89),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.email_outlined),
                label: 'Profile',
              ),
            ],
            currentIndex: cubit.currentIndex,
            onTap: (index) {
              cubit.changeIndex(index: index, context: context);
            },
          ),
          drawer: CustomDrawer(),
        );
      },
    );
  }
}
