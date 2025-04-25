import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:optikick/core/utils/colors.dart';

class PlayerItem extends StatelessWidget {
  const PlayerItem({
    super.key,
    required this.title,
    this.toDo,
  });

  final String title;
  final String? toDo;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 4, 21, 10),
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                      width: 20.w,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      title,
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: ColorsManager.realWhiteColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        toDo ?? "",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: ColorsManager.realWhiteColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ))
    ]);
  }
}
