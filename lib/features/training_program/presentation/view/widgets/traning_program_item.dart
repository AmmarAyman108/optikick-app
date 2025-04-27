import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:optikick/core/routes/routes.dart';
import 'package:optikick/core/utils/colors.dart';

class TraningProgramItem extends StatelessWidget {
  const TraningProgramItem({
    super.key,
    required this.title,
    required this.statusValue,
    required this.position,
  });

  final String title;
  final String statusValue;
  final String position;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          height: 100.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 4, 21, 10),
                // Color.fromARGB(255, 40, 59, 52),
                Color(0xff5D6E68),
              ],
              stops: [0.0, 0.9],
            ),
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(
              color: ColorsManager.realWhiteColor,
              width: 0.2.w,
            ),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, RoutesName.playerView,
                  arguments: title);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                          height: 35.h,
                          width: 35.w,
                          child: Icon(
                            Symbols.assignment,
                            size: 30.h,
                            color: ColorsManager.textIconColor,
                          )),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: ColorsManager.realWhiteColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        position,
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: ColorsManager.realWhiteColor,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: ColorsManager.realWhiteColor,
                        size: 18.sp,
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        "Status",
                        style: TextStyle(
                          fontSize: 17.sp,
                          color: ColorsManager.realWhiteColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        statusValue,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: ColorsManager.realWhiteColor,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        "assets/images/File.svg",
                        height: 30.h,
                        width: 30.w,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ))
    ]);
  }
}
