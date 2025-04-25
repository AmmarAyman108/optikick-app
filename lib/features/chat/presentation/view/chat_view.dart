import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:optikick/core/widgets/gradient_background.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
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
                      SvgPicture.asset('assets/images/avatar.svg',
                          width: 30.w, height: 30.h),
                      Text(
                        'Dr. Derek Shepherd',
                        style: TextStyle(fontSize: 16.sp, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon:
                      const Icon(Icons.arrow_back_ios_new, color: Colors.white),
                  onPressed: () => Navigator.pop(context),
                ),
              ]),
              SizedBox(height: 22.h),
              const Divider(
                color: Color.fromARGB(255, 145, 145, 145),
                thickness: 0.5,
                height: 0,
              ),
              Expanded(
                child: ListView(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  children: [
                    _buildTimeStamp('Yesterday 9:41'),
                    _buildMessage(
                      isMe: false,
                      message:
                          'Hey, Doc Derek!\n\nOne of the lads, Sam, said he felt a little pain in his hamstring during training today. Just a little worried about him. What do you think? Serious or just a tweak?',
                      time: '9:41',
                    ),
                    _buildTimeStamp('Yesterday 9:45'),
                    _buildMessage(
                      isMe: true,
                      message:
                          'I did a quick evaluation on him right after the session. It doesn\'t seem too serious—probably just some mild strain or muscle tightness.',
                      time: '9:45',
                    ),
                    _buildTimeStamp('Yesterday 9:50'),
                    _buildMessage(
                      isMe: false,
                      message:
                          'Phew, that\'s a relief. So, what\'s the plan? When can we have him back?',
                      time: '9:50',
                    ),
                    _buildTimeStamp('Seen 10:02'),
                    _buildMessage(
                      isMe: true,
                      message:
                          'I\'d recommend resting him for a day or two, with light stretching and recovery. If all goes well, he can ease back into training after that.',
                      time: '10:02',
                      isSeen: true,
                    ),
                  ],
                ),
              ),
              _buildMessageInput(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTimeStamp(String text) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
        margin: EdgeInsets.symmetric(vertical: 8.h),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 12.sp, color: Color(0xFFEBEBF5)),
        ),
      ),
    );
  }

  Widget _buildMessage({
    required bool isMe,
    required String message,
    required String time,
    bool isSeen = false,
  }) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 280.w),
        child: Container(
          margin: EdgeInsets.only(bottom: 8.h),
          padding: EdgeInsets.all(12.w),
          decoration: BoxDecoration(
            color: isMe ? Color(0xFF0A84FF) : Color(0xFF262628),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r),
              bottomLeft: isMe ? Radius.circular(20.r) : Radius.circular(0),
              bottomRight: isMe ? Radius.circular(0) : Radius.circular(20.r),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                message,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 4.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMessageInput() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 78, 94, 89),
        borderRadius: BorderRadius.circular(50.r),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 78, 94, 89),
                borderRadius: BorderRadius.circular(24.r),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: TextStyle(fontSize: 14.sp),
                      decoration: InputDecoration(
                        icon: Icon(Icons.camera_alt_outlined,
                            color: Colors.white, size: 26.w),
                        hintText: 'Message...',
                        filled: true,
                        fillColor: const Color.fromARGB(255, 78, 94, 89),
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Color(0xFFFFFFFF)),
                      ),
                    ),
                  ),
                  Icon(Icons.mic, color: Colors.white, size: 26.w),
                  SizedBox(width: 8.w),
                  Icon(Icons.image_outlined, color: Colors.white, size: 26.w),
                  SizedBox(width: 8.w),
                  Icon(Icons.add_circle_outline_outlined,
                      color: Colors.white, size: 30.w),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
