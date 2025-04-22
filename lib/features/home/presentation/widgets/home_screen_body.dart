import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:optikick/features/home/presentation/data/info_card_model.dart';
import 'package:optikick/features/home/presentation/widgets/overviewsection.dart';
import 'package:optikick/features/home/presentation/widgets/info_card.dart';

// HomeScreenBody Widget with Custom Paint Widgets
class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

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
            Color.fromARGB(255, 4, 21, 10),
            Color.fromARGB(255, 40, 59, 52),
            Color(0xff5D6E68),
          ],
          stops: [0.0, 0.7, 1.0],
        ),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OverviewSection(),
              Column(
                children: [
                  GridView.count(
                    crossAxisCount: 2,
                    padding: const EdgeInsets.all(4),
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: List.generate(infoCards.length, (index) {
                      final card = infoCards[index];
                      return InfoCard(
                        imagePath: card.imagePath,
                        title: card.title,
                        description: card.description,
                      );
                    }),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
