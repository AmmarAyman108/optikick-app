import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:optikick/features/reaction_time/presentation/widgets/custom_curve_chart.dart';

class ReactionTimeView extends StatelessWidget {
  const ReactionTimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Reaction Time',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            CustomCurveChart()
          ],
        ),
      ),
    );
  }
}
