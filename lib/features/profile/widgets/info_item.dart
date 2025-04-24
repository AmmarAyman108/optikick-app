import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/colors.dart';

class InfoItem extends StatelessWidget {
  const InfoItem(
      {required this.firstTitle,
      required this.firstValue,
      required this.secondTitle,
      required this.secondValue});
  final String firstTitle;
  final String firstValue;
  final String secondTitle;
  final String secondValue;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          height: 105.h,
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
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      firstTitle,
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: ColorsManager.realWhiteColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      firstValue,
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: ColorsManager.realWhiteColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Divider(
                  color: ColorsManager.realWhiteColor,
                  thickness: 0.2.h,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Text(
                      secondTitle,
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: ColorsManager.realWhiteColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      secondValue,
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: ColorsManager.realWhiteColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ))
    ]);
  }
}
