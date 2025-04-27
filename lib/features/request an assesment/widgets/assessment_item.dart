



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:optikick/core/utils/colors.dart';

class AssessmentItem extends StatelessWidget {
  final String name;
  final String dateTime;

  const AssessmentItem({
    super.key,
    required this.name,
    required this.dateTime,
  });

  @override
  Widget build(BuildContext context) {
    // Split the day and rest of date
    List<String> parts = dateTime.split(' ');
    String day = parts.isNotEmpty ? parts[0] : '';
    String rest = parts.length > 1 ? parts.sublist(1).join(' ') : '';

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Icon inside a column
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Symbols.stethoscope,
                    color: ColorsManager.textIconColor,
                    size: 48.sp,
                  ),
                ],
              ),
              SizedBox(width: 15.w),
              // Text and button section
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 8.h),
                   
                    Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(text: 'Requesting an assessment on '),
                          TextSpan(
                            text: '$day\n',
                            style: const TextStyle(),
                          ),
                          TextSpan(
                            text: rest,
                            style: const TextStyle(),
                          ),
                        ],
                      ),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                      ),
                      maxLines: 3, 
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 15.h),
                    SizedBox(
                      width: double.infinity,
                      height: 36.h,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: const Color(0xFF191E26),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            side: const BorderSide(
                              color: Colors.white,
                              width: 0.2,
                            ),
                          ),
                          padding: EdgeInsets.zero,
                        ),
                        child: Center(
                          child: Text(
                            'See More',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        // Full width divider
        Container(
          height: 1,
          color: Colors.white.withOpacity(0.2),
          width: double.infinity,
        ),
      ],
    );
  }
}
