import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppOutlinedButtons {
  // Numbers and Decimal Point
  static outlinedButton01({
    required void Function() onPressed,
    required String buttonLabel,
  }) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        minimumSize: Size(17.w, 17.w),
        maximumSize: Size(17.w, 17.w),
        shape: const CircleBorder(),
        side: const BorderSide(color: Colors.blueAccent),
      ),
      child: Text(
        buttonLabel,
        style: TextStyle(
          fontSize: 18.5.sp,
          color: Colors.black.withOpacity(0.7),
        ),
      ),
    );
  }

  // Arithmetic Operators
  static outlinedButton02({
    required void Function() onPressed,
    required String buttonLabel,
  }) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        minimumSize: Size(17.w, 17.w),
        maximumSize: Size(17.w, 17.w),
        shape: const CircleBorder(),
        side: const BorderSide(color: Colors.blueAccent),
      ),
      child: Text(
        buttonLabel,
        style: TextStyle(fontSize: 21.sp),
      ),
    );
  }

  // Functions
  static outlinedButton03({
    required void Function() onPressed,
    required String buttonLabel,
  }) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        minimumSize: Size(17.w, 17.w),
        maximumSize: Size(17.w, 17.w),
        shape: const CircleBorder(),
        side: const BorderSide(color: Colors.blueAccent),
      ),
      child: Text(
        buttonLabel,
        style: TextStyle(fontSize: 18.5.sp),
      ),
    );
  }
}
