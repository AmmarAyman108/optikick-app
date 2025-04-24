import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:optikick/features/home/presentation/pages/home_page.dart';

part 'bottom_nav_state.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  late final List<Widget> screens;
  int currentIndex = 0;

  BottomNavCubit() : super(BottomNavInitial()) {
    screens = [
      HomePage(),
      Container(),
      Container(),
    ];
  }

  void changeIndex({required int index, required BuildContext context}) {
    if (index != currentIndex) {
      currentIndex = index;
      emit(ChangeIndex());
    }
  }
}
