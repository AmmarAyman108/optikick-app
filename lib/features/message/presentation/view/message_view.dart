import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:optikick/core/widgets/gradient_background.dart';
import 'package:optikick/features/message/presentation/view/widgets/custom_message_app_bar.dart';
import 'package:optikick/features/message/presentation/view/widgets/user_tile_item.dart';

class MessageView extends StatelessWidget {
  const MessageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: Column(
          children: [
            SizedBox(height: 0.h),
            CustomMessageAppBar(),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                itemCount: 10,
                itemBuilder: (context, index) => const MessageItem(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//  CustomMessageAppBar(),
