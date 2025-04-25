import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:optikick/features/home/presentation/widgets/custom_clip_path.dart';

class OverviewSection extends StatelessWidget {
  const OverviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ClipPath(
        clipper: MyClipperPath(),
        child: Container(
          height: 210.h,
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                offset: Offset(2, 22),
                blurRadius: 30,
                spreadRadius: 5,
              ),
            ],
            border: Border.all(
              color: Colors.white.withOpacity(0.2),
              width: 1,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 4, 21, 10),
                Color.fromARGB(255, 40, 59, 52),
                Color(0xff5D6E68),
              ],
              stops: [0.0, 0.7, 1.0],
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white.withOpacity(0.2),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.transparent,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        "Overview",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 120.h,
                    width: 120.w,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        RingPieChart(),
                        Positioned(
                          child: Icon(
                            Symbols.group,
                            size: 30.h,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: SizedBox(
                      height: 120.h,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            StatRow(
                              color: Colors.lightBlue,
                              label: "Optimal",
                              percentage: "48%",
                              count: "12",
                            ),
                            StatRow(
                              color: Color(0xFF1A237E),
                              label: "Risk",
                              percentage: "24%",
                              count: "6",
                            ),
                            StatRow(
                              color: Colors.deepPurple,
                              label: "Underperforming",
                              percentage: "16%",
                              count: "4",
                            ),
                            StatRow(
                              color: Color(0xFF1E88E5),
                              label: "Recovering",
                              percentage: "12%",
                              count: "3",
                            ),

                            // Add more if needed
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              // Stats column
            ],
          ),
        ),
      ),
    );
  }
}

class StatRow extends StatelessWidget {
  final Color color;
  final String label;
  final String percentage;
  final String count;

  const StatRow({
    super.key,
    required this.color,
    required this.label,
    required this.percentage,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),
      child: Row(
        children: [
          Container(
            width: 10.w,
            height: 10.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
          ),
          SizedBox(width: 6.w),
          Expanded(
            child: Text(
              label,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.white, fontSize: 13.sp),
            ),
          ),
          Text(
            percentage,
            style: TextStyle(color: Colors.white, fontSize: 12.sp),
          ),
          SizedBox(width: 4.w),
          Text(
            "($count)",
            style: TextStyle(color: Colors.white54, fontSize: 12.sp),
          ),
        ],
      ),
    );
  }
}

class RingPieChart extends StatelessWidget {
  const RingPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 120,
      child: PieChart(
        PieChartData(
          startDegreeOffset: -90,
          sectionsSpace: 0,

          centerSpaceRadius: 40, // Creates ring effect
          sections: [
            PieChartSectionData(
              value: 48,
              color: Colors.lightBlue,
              radius: 18,
              showTitle: false,
            ),
            PieChartSectionData(
              value: 24,
              color: Colors.indigo[800],
              radius: 18,
              showTitle: false,
            ),
            PieChartSectionData(
              value: 16,
              color: Colors.deepPurple,
              radius: 18,
              showTitle: false,
            ),
            PieChartSectionData(
              value: 12,
              color: Colors.blue[600],
              radius: 18,
              showTitle: false,
            ),
          ],
        ),
      ),
    );
  }
}
