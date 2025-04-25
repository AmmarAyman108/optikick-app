import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:optikick/core/routes/routes.dart';
import 'package:optikick/core/utils/colors.dart';
import 'package:optikick/features/stats/presentation/view/widgets/player_stats_info.dart';

class PlayerStats extends StatelessWidget {
  const PlayerStats({super.key});

  final String playerName = "Nunez";

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
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        PlayerStatsInfo(
                          title: 'Resting Heart Rate',
                          statusValueType: 'bpm',
                          time: '5:35 am',
                          statusValue: '64',
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        PlayerStatsInfo(
                          title: 'Max Heart Rate',
                          time: '9:35 am',
                          statusValue: '200',
                          statusValueType: 'bpm',
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        PlayerStatsInfo(
                          title: 'HRV',
                          time: '5:35 am',
                          statusValue: '53.4',
                          statusValueType: 'ms',
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        PlayerStatsInfo(
                          title: 'VO2 Max',
                          time: '5:35 am',
                          statusValue: '42',
                          statusValueType: '(ml/kg/min)',
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, RoutesName.reactionTimeView);
                          },
                          child: PlayerStatsInfo(
                            title: 'Reaction Time',
                            time: '5:35 am',
                            statusValue: '320',
                            statusValueType: 'ms',
                          ),
                        ),
                      ],
                    )))));
  }
}
