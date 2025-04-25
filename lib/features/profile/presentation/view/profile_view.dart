import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:optikick/core/utils/colors.dart';
import 'package:optikick/features/profile/widgets/info_item.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

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
            stops: [0.0, 0.5,0.9],
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
                "Profile",
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              color: Colors.transparent,
                              child: Icon(
                                Icons.account_circle_rounded,
                                color: ColorsManager.realWhiteColor,
                                size: 60.sp,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 18.h,
                        ),
                        PersonalInfoItem(
                            firstTitle: "First Name",
                            firstValue: "MO",
                            secondTitle: "Last Name",
                            secondValue: "Salah"),
                        SizedBox(
                          height: 18.h,
                        ),
                        PersonalInfoItem(
                            firstTitle: "Date of Birth",
                            firstValue: "15 June 1992 (32)",
                            secondTitle: "Sex",
                            secondValue: "Male"),
                        SizedBox(
                          height: 18.h,
                        ),
                        PersonalInfoItem(
                            firstTitle: "Status",
                            firstValue: "Optimal",
                            secondTitle: "Position",
                            secondValue: "Forward"),
                        SizedBox(
                          height: 18.h,
                        ),
                        PersonalInfoItem(
                            firstTitle: "Blood Type",
                            firstValue: "A+",
                            secondTitle: "Email",
                            secondValue: "7Mos10@gmail.com"),
                        SizedBox(
                          height: 18.h,
                        ),
                      ],
                    )))));
  }
}
