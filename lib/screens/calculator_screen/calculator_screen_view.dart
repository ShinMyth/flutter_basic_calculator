import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CalculatorScreenView extends StatefulWidget {
  const CalculatorScreenView({Key? key}) : super(key: key);

  @override
  State<CalculatorScreenView> createState() => _CalculatorScreenViewState();
}

class _CalculatorScreenViewState extends State<CalculatorScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Basic Calculator"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 17.h,
            width: 100.w,
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                "100",
                style: TextStyle(
                  fontSize: 23.sp,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
            ),
          ),
          SizedBox(height: 1.5.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: const Divider(thickness: 1.25),
          ),
          SizedBox(height: 3.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 17.w,
                width: 17.w,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: const CircleBorder(),
                    side: const BorderSide(color: Colors.blueAccent),
                  ),
                  child: Text(
                    "AC",
                    style: TextStyle(fontSize: 18.5.sp),
                  ),
                ),
              ),
              SizedBox(
                height: 17.w,
                width: 17.w,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: const CircleBorder(),
                    side: const BorderSide(color: Colors.blueAccent),
                  ),
                  child: Text(
                    "C",
                    style: TextStyle(fontSize: 18.5.sp),
                  ),
                ),
              ),
              SizedBox(width: 17.w),
              SizedBox(
                height: 17.w,
                width: 17.w,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: const CircleBorder(),
                    side: const BorderSide(color: Colors.blueAccent),
                  ),
                  child: Text(
                    "÷",
                    style: TextStyle(fontSize: 21.sp),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 2.5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 17.w,
                width: 17.w,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: const CircleBorder(),
                    side: const BorderSide(color: Colors.blueAccent),
                  ),
                  child: Text(
                    "7",
                    style: TextStyle(
                      fontSize: 18.5.sp,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 17.w,
                width: 17.w,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: const CircleBorder(),
                    side: const BorderSide(color: Colors.blueAccent),
                  ),
                  child: Text(
                    "8",
                    style: TextStyle(
                      fontSize: 18.5.sp,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 17.w,
                width: 17.w,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: const CircleBorder(),
                    side: const BorderSide(color: Colors.blueAccent),
                  ),
                  child: Text(
                    "9",
                    style: TextStyle(
                      fontSize: 18.5.sp,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 17.w,
                width: 17.w,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: const CircleBorder(),
                    side: const BorderSide(color: Colors.blueAccent),
                  ),
                  child: Text(
                    "×",
                    style: TextStyle(fontSize: 21.sp),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 2.5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 17.w,
                width: 17.w,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: const CircleBorder(),
                    side: const BorderSide(color: Colors.blueAccent),
                  ),
                  child: Text(
                    "4",
                    style: TextStyle(
                      fontSize: 18.5.sp,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 17.w,
                width: 17.w,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: const CircleBorder(),
                    side: const BorderSide(color: Colors.blueAccent),
                  ),
                  child: Text(
                    "5",
                    style: TextStyle(
                      fontSize: 18.5.sp,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 17.w,
                width: 17.w,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: const CircleBorder(),
                    side: const BorderSide(color: Colors.blueAccent),
                  ),
                  child: Text(
                    "6",
                    style: TextStyle(
                      fontSize: 18.5.sp,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 17.w,
                width: 17.w,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: const CircleBorder(),
                    side: const BorderSide(color: Colors.blueAccent),
                  ),
                  child: Text(
                    "−",
                    style: TextStyle(fontSize: 21.sp),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 2.5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 17.w,
                width: 17.w,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: const CircleBorder(),
                    side: const BorderSide(color: Colors.blueAccent),
                  ),
                  child: Text(
                    "1",
                    style: TextStyle(
                      fontSize: 18.5.sp,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 17.w,
                width: 17.w,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: const CircleBorder(),
                    side: const BorderSide(color: Colors.blueAccent),
                  ),
                  child: Text(
                    "2",
                    style: TextStyle(
                      fontSize: 18.5.sp,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 17.w,
                width: 17.w,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: const CircleBorder(),
                    side: const BorderSide(color: Colors.blueAccent),
                  ),
                  child: Text(
                    "3",
                    style: TextStyle(
                      fontSize: 18.5.sp,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 17.w,
                width: 17.w,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: const CircleBorder(),
                    side: const BorderSide(color: Colors.blueAccent),
                  ),
                  child: Text(
                    "+",
                    style: TextStyle(fontSize: 21.sp),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 2.5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 17.w),
              SizedBox(
                height: 17.w,
                width: 17.w,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: const CircleBorder(),
                    side: const BorderSide(color: Colors.blueAccent),
                  ),
                  child: Text(
                    "0",
                    style: TextStyle(
                      fontSize: 18.5.sp,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 17.w,
                width: 17.w,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: const CircleBorder(),
                    side: const BorderSide(color: Colors.blueAccent),
                  ),
                  child: Text(
                    ".",
                    style: TextStyle(
                      fontSize: 18.5.sp,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 17.w,
                width: 17.w,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                  ),
                  child: Text(
                    "=",
                    style: TextStyle(fontSize: 21.sp),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
