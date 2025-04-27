import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:optikick/core/widgets/gradient_background.dart';
import 'package:optikick/features/reaction_time/presentation/widgets/custom_curve_chart.dart';
import 'package:optikick/features/reaction_time/presentation/widgets/custom_tab_selector.dart';

class ReactionTimeView extends StatelessWidget {
  const ReactionTimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Column(
            children: [
              Stack(children: [
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Reaction Time',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    padding: const EdgeInsets.only(bottom: 30),
                    icon: const Icon(Icons.arrow_back_ios_new,
                        color: Colors.white),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ]),
              const Divider(
                color: Color.fromARGB(255, 145, 145, 145),
                thickness: 0.5,
                height: 0,
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: CustomTabSelector()),
                      const SizedBox(height: 24),
                      CustomCurveChart(),
                      SizedBox(height: 30.h),
                      CustomContainer(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Highlights',
                              style: TextStyle(
                                fontSize: 17.sp,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: CustomContainer(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Symbols.vital_signs,
                                          color: Colors.white,
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          'Reaction Time',
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'Day 3 has the slowest reaction time, likely due to fatigue or stress. Reaction time improves over the 7 days, showing consistent adaptation. Days 5-6 remain stable, indicating a possible plateau.',
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const Divider(
                                      color: Color.fromARGB(255, 145, 145, 145),
                                      thickness: 0.5,
                                      height: 10,
                                    ),
                                    Text(
                                      'The Day 3 peak (430+ ms) vs. Day 7 drop (410- ms) suggests fatigue, training, or focus impact. Variations hint at external factors like sleep, cognitive load, or consistency. Final improvement may be due to adaptation or better training routines.',
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final Widget child;
  const CustomContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 4, 21, 10),
              Color.fromARGB(255, 40, 59, 52),
              Color(0xff5D6E68),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: .4),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: child);
  }
}
