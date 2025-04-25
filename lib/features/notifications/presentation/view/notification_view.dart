import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:optikick/core/utils/colors.dart';
import 'package:optikick/features/notifications/presentation/view/widgets/notification_tile.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.sh, // screen height باستخدام screen util
      width: 1.sw, // screen width باستخدام screen util
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
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView.separated(
          padding: EdgeInsets.symmetric(vertical: 16.h), // responsive padding
          itemCount: _notifications.length,
          separatorBuilder: (context, index) => Divider(
            color: Colors.white,
            thickness: 0.2.h,
            indent: 16.w,
            endIndent: 16.w,
          ),
          itemBuilder: (context, index) {
            final notification = _notifications[index];
            return NotificationTile(
              leadingIcon: notification['leadingIcon'] as IconData,
              title: notification['title'] as String,
              subtitle: notification['subtitle'] as String,
              handle: notification['handle'] as String,
            );
          },
        ),
      ),
    );
  }
}

final List<Map<String, dynamic>> _notifications = [
  {
    'leadingIcon': Icons.account_circle,
    'title': 'Szoboszlai',
    'subtitle': 'Szoboszlai added Reaction ❤️',
    'handle': '@Dszoboszlai',
  },
  
  {
    'leadingIcon': Icons.account_circle,
    'title': 'Trent',
    'subtitle': 'Sent you a voice message',
    'handle': '@Arnold',
  },

  {
    'leadingIcon': Symbols.stethoscope,
    'title': 'Request an Assessment',
    'subtitle': 'Accepted your assessment request at 8 AM',
    'handle': 'Dr. Derek Shepherd @Dshepherd',
  },

  {
    'leadingIcon': Icons.assignment_outlined,
    'title': 'Training Program',
    'subtitle': 'Added a new training program for you',
    'handle': 'Dr. Derek Shepherd @Dshepherd',
  },

  {
    'leadingIcon':  Symbols.vital_signs,
    'title': 'Stats',
    'subtitle': 'You are classified as optimal',
    'handle': '',
  },
];
