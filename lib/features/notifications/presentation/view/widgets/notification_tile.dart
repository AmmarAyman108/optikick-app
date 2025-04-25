import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationTile extends StatelessWidget {
  final IconData leadingIcon;
  final String title;
  final String subtitle;
  final String handle;

  const NotificationTile({
    super.key,
    required this.leadingIcon,
    required this.title,
    required this.subtitle,
    required this.handle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
      leading: Icon(
        leadingIcon,
        size: 36.sp, 
        color: Colors.white,
      ),
      title: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.sp, 
                color: Colors.white,
              ),
            ),
            if (handle.isNotEmpty)
              TextSpan(
                text: ' $handle',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.sp,
                ),
              ),
          ],
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: Colors.white70,
          fontSize: 13.sp, 
        ),
      ),
    );
  }
}
