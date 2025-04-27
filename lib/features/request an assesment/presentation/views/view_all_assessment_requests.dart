import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:optikick/core/utils/colors.dart';
import 'package:optikick/features/request%20an%20assesment/widgets/assessment_item.dart';

class ViewAllAssessmentRequests extends StatelessWidget {
  const ViewAllAssessmentRequests({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon:
              const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Request an Assessment',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
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
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          children: const [
            AssessmentItem(
              name: 'Szoboszlai',
              dateTime: '8th Feb at 8 AM',
            ),
            AssessmentItem(
              name: 'Salah',
              dateTime: '8th Feb at 10 AM',
            ),
            AssessmentItem(
              name: 'Virgil',
              dateTime: '9th Feb at 8:30 AM',
            ),
          ],
        ),
      ),
    );
  }
}
