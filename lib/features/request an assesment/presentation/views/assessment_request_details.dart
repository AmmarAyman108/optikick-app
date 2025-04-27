import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:optikick/core/utils/colors.dart';
import 'package:optikick/features/request%20an%20assesment/widgets/action_button.dart'; // Assuming you have your ColorsManager

class AssessmentRequestDetails extends StatelessWidget {
  const AssessmentRequestDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: ColorsManager.backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon:
              const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Request an Assessment',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff102418),
              Color.fromARGB(255, 40, 59, 52),
              Color(0xff566761),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: ListView(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left Icon Column
                  Column(
                    children: [
                      Icon(
                        Symbols.stethoscope,
                        color: ColorsManager.textIconColor,
                        size: 48.sp,
                      ),
                    ],
                  ),
                  SizedBox(width: 16.w),
                  // Right Content Column
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Szoboszlai',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        const Label(text: 'Issue Type'),
                        const InfoBox(text: 'Little pain in the hamstring'),
                        SizedBox(height: 12.h),
                        const Label(text: 'Date'),
                        const InfoBox(text: '08 Feb 2025'),
                        SizedBox(height: 12.h),
                        const Label(text: 'Hour'),
                        const InfoBox(text: '8 AM'),
                        SizedBox(height: 12.h),
                        const Label(text: 'Message'),
                        const InfoBox(
                          text:
                              'I was warming up as usual before the training session and then I felt a little pain in my hamstring after two sprints.',
                          isMultiline: true,
                        ),
                        SizedBox(height: 30.h),
                        Row(
                          children: [
                            Expanded(
                              child: ActionButton(
                                text: 'Approve',
                                backgroundColor: Colors.white,
                                textColor: Colors.black,
                              ),
                            ),
                            SizedBox(
                                width:
                                    50.w), // horizontal space between buttons
                            Expanded(
                              child: ActionButton(
                                text: 'Postpone',
                                backgroundColor: Color(0xFF2E2F33),
                                textColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class Label extends StatelessWidget {
  final String text;
  const Label({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.h, bottom: 4.h),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class InfoBox extends StatelessWidget {
  final String text;
  final bool isMultiline;
  const InfoBox({super.key, required this.text, this.isMultiline = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
        vertical: isMultiline ? 15.h : 12.h,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF191E26),
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: Colors.white.withOpacity(0.2)),
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.sp,
          ),
          maxLines: isMultiline ? 5 : 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
