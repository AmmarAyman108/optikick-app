import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:optikick/core/utils/colors.dart';

class SubmitNewAssesmentRequest extends StatefulWidget {
  const SubmitNewAssesmentRequest({super.key});

  @override
  State<SubmitNewAssesmentRequest> createState() =>
      _SubmitNewAssesmentRequestState();
}

class _SubmitNewAssesmentRequestState extends State<SubmitNewAssesmentRequest> {
  final _formKey = GlobalKey<FormState>(); // Key for form validation
  String? selectedIssueType;
  String? selectedDate;
  String? selectedHour;
  TextEditingController messageController = TextEditingController(); // Controller for message field

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Request an Assessment',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        children: [
          // Background Gradient
          Container(
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
                stops: [0.0, 0.5, 0.9],
              ),
            ),
          ),
          // Main Content
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
            child: Form(
              key: _formKey, // Attach the form key
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 45.h),
                  Container(
                    padding: EdgeInsets.all(24.w),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff566761),
                          Color.fromARGB(255, 40, 59, 52),
                          Color(0xff102418),
                        ],
                        stops: [0.0, 0.5, 0.9],
                      ),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(" Issue Type",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                )),
                          ],
                        ),
                        SizedBox(height: 6.h),
                        DropdownButtonFormField(
                          value: selectedIssueType,
                          decoration: _inputDecoration('Select an issue type', 'Value'),
                          dropdownColor: Colors.black,
                          style: const TextStyle(color: Colors.white),
                          items: ['Muscle pain', 'Injury', 'Fatigue'].map((item) {
                            return DropdownMenuItem(
                              value: item,
                              child: Text(item),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedIssueType = value;
                            });
                          },
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Row(
                          children: [
                            Text(" Date",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                )),
                          ],
                        ),
                        SizedBox(height: 6.h),
                        DropdownButtonFormField<String>(
                          value: selectedDate,
                          decoration: _inputDecoration('Select a date', 'Value'),
                          dropdownColor: Colors.black,
                          style: const TextStyle(color: Colors.white),
                          items: ['08 Feb', '09 Feb', '10 Feb'].map((item) {
                            return DropdownMenuItem<String>(
                              value: item,
                              child: Text(item),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedDate = value;
                            });
                          },
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Row(
                          children: [
                            Text(" Hour",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                )),
                          ],
                        ),
                        SizedBox(height: 6.h),
                        DropdownButtonFormField<String>(
                          value: selectedHour,
                          decoration: _inputDecoration('Select a time', 'Value'),
                          dropdownColor: Colors.black,
                          style: const TextStyle(color: Colors.white),
                          items: ['8 AM', '9 AM', '10 AM'].map((item) {
                            return DropdownMenuItem<String>(
                              value: item,
                              child: Text(item),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedHour = value;
                            });
                          },
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Row(
                          children: [
                            Text(" Message",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                )),
                          ],
                        ),
                        SizedBox(height: 6.h),
                        Stack(
                          children: [
                            TextFormField(
                              controller: messageController, // Assign controller here
                              maxLines: 3,
                              decoration: _inputDecoration('Write your message...', 'Value'),
                              style: const TextStyle(color: Colors.white),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a message';
                                }
                                return null;
                              },
                            ),
                            Positioned(
                              bottom: 10.h,
                              right: 10.w,
                              child: GestureDetector(
                                onPanUpdate: (details) {
                                  // Handle drag events here if needed
                                },
                                child: Icon(
                                  Icons.drag_handle,
                                  color: Colors.white,
                                  size: 30.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 24.h),
                        // Submit Button
                        SizedBox(
                          width: double.infinity,
                          height: 40.h,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                            ),
                            onPressed: () {
                              if (_formKey.currentState?.validate() ?? false) {
                                // Form is valid, process data
                                // Handle form submission logic here
                              }
                            },
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  InputDecoration _inputDecoration(String hint, String label) {
    return InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
      labelText: label,
      labelStyle: TextStyle(
        color: Colors.white.withOpacity(0.6),
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      ),
      hintText: hint,
      hintStyle: TextStyle(
        color: Colors.white.withOpacity(0.5),
        fontSize: 14.sp,
      ),
      filled: true,
      fillColor: Color(0xff191E26),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(
          color: Colors.white.withOpacity(0.2),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: const BorderSide(color: Colors.white),
      ),
    );
  }
}
