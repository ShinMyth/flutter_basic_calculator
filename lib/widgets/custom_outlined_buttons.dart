import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NumberDecimalOutlinedButton extends StatelessWidget {
  const NumberDecimalOutlinedButton({
    Key? key,
    required this.onPressed,
    required this.buttonLabel,
  }) : super(key: key);

  final void Function() onPressed;
  final String buttonLabel;

  @override
  Widget build(BuildContext context) {
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
}

class ArithmeticOperatorOutlinedButton extends StatelessWidget {
  const ArithmeticOperatorOutlinedButton({
    Key? key,
    required this.onPressed,
    required this.buttonLabel,
  }) : super(key: key);

  final void Function() onPressed;
  final String buttonLabel;

  @override
  Widget build(BuildContext context) {
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
}

class FunctionOutlinedButton extends StatelessWidget {
  const FunctionOutlinedButton({
    Key? key,
    required this.onPressed,
    required this.buttonLabel,
  }) : super(key: key);

  final void Function() onPressed;
  final String buttonLabel;

  @override
  Widget build(BuildContext context) {
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
