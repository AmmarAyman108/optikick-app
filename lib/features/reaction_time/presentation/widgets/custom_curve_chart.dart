import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomCurveChart extends StatelessWidget {
  final List<double> values = [420, 415, 435, 425, 415, 415, 405];
  final List<String> days = [
    '    Sat',
    'Sun',
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri'
  ];

  CustomCurveChart({super.key});

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
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Y-axis labels
          SizedBox(
            height: 200,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Y-axis numbers
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [440, 430, 420, 410, 400]
                      .map((num) => Text(
                            num.toString(),
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ))
                      .toList(),
                ),
                const SizedBox(width: 8),
                // Chart area
                Expanded(
                  child: Stack(
                    children: [
                      // Background grid
                      CustomPaint(
                        painter: ChartGridPainter(),
                      ),
                      // Curve line
                      LineChart(
                        LineChartData(
                          gridData: FlGridData(show: false),
                          titlesData: FlTitlesData(
                            bottomTitles: AxisTitles(
                              sideTitles: SideTitles(
                                showTitles: true,
                                getTitlesWidget: (value, meta) {
                                  return Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      days[value.toInt()],
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                  );
                                },
                                reservedSize: 24,
                              ),
                            ),
                            leftTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                            rightTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                            topTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                          ),
                          borderData: FlBorderData(show: false),
                          minX: 0,
                          maxX: 6,
                          minY: 390,
                          maxY: 440,
                          lineBarsData: [
                            LineChartBarData(
                              spots: values.asMap().entries.map((entry) {
                                return FlSpot(
                                    entry.key.toDouble(), entry.value);
                              }).toList(),
                              curveSmoothness: 0.3,
                              color: const Color.fromARGB(255, 229, 194, 132),
                              barWidth: 3,
                              isStrokeCapRound: true,
                              dotData:
                                  FlDotData(show: false), // Dots disabled here
                              belowBarData: BarAreaData(show: false),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChartGridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey.withOpacity(0.2)
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    // Draw horizontal grid lines
    final yStep = size.height / 4;
    for (var i = 0; i <= 4; i++) {
      final y = i * yStep;
      canvas.drawLine(
        Offset(0, y),
        Offset(size.width, y),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
