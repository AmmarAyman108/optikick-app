import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:optikick/core/utils/colors.dart';
import 'package:optikick/features/player/widgets/player_item.dart';

class PlayerView extends StatelessWidget {
  const PlayerView({super.key, required this.playerName});

  final String playerName ;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff102418),
              Color.fromARGB(255, 40, 59, 52),
              Color(0xff566761),
            ],
            stops: [0.0, 0.5, 0.9],
          ),
        ),
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: ColorsManager.backgroundColor,
              elevation: 0,
              actions: [
                IconButton(
                  icon: Icon(
                    Symbols.edit_square_rounded,
                    color: ColorsManager.realWhiteColor,
                    size: 22.sp,
                   opticalSize: 6.sp
                  ),
                  onPressed: () {
                    
                  },
                ),
              ],
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: ColorsManager.realWhiteColor,
                  size: 20.sp,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: Text(
              playerName,
                style: TextStyle(
                  fontSize: 18.sp,
                  color: ColorsManager.realWhiteColor,
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        PlayerItem(
                         
                          title: 'Focus :  Stamina & endurance',
                      
                        ),
                        SizedBox(
                          height: 22.h,
                        ),
                         PlayerItem(
                         
                          title: 'Cardio exercises: 30 mins/day',
                          toDo: "Interval running drills",
                      
                        ),
                        SizedBox(
                          height: 22.h,
                        ),
                         PlayerItem(
                         
                          title: 'Cycling: 45 mins twice a week',
                          toDo: "Proper hydration and recovery techniques",
                      
                        ),
                       
                      ],
                    )))));
  }
}
