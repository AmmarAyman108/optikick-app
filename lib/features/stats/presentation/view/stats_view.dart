import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:optikick/core/utils/colors.dart';
import 'package:optikick/features/stats/presentation/view/widgets/stats_info_item.dart';

class StatsView extends StatelessWidget {
  const StatsView({super.key});

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
                "Stats",
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
                        StatsInfoItem(  position: 'Forward',
                          title: 'Salah',
                         
                          statusValue: 'Optimal',
                        ),
                        SizedBox(
                          height: 18.h,
                        ),
                        StatsInfoItem(  position: 'Forward',
                          title: 'Diaz',
                         
                          statusValue: 'Optimal',
                        ),
                        SizedBox(
                          height: 18.h,
                        ),
                        StatsInfoItem(  position: 'Forward',
                          title: 'Jota',
                          
                          statusValue: 'Optimal',
                        ),
                        SizedBox(
                          height: 18.h,
                        ),
                        StatsInfoItem(  position: 'Forward',
                          title: 'Gakpo',
                         
                          statusValue: 'Optimal',
                        ),
                        SizedBox(
                          height: 18.h,
                        ),
                        StatsInfoItem(
                          title: 'Nunez',
                          position: 'Forward',
                         
                          statusValue: 'Optimal',
                        ),
                        SizedBox(
                          height: 18.h,
                        ),
                        StatsInfoItem(
                          title: 'Szoboszlai',
                          position: 'Midfielder',
                          
                          statusValue: 'Optimal',
                        ),
                      ],
                    )))));
  }
}
