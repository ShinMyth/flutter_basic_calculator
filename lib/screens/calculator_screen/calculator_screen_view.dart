import 'package:basiccalculator/configurables/app_outlined_buttons.dart';
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
              AppOutlinedButtons.outlinedButton03(
                onPressed: () {},
                buttonLabel: "AC",
              ),
              AppOutlinedButtons.outlinedButton03(
                onPressed: () {},
                buttonLabel: "C",
              ),
              SizedBox(width: 17.w),
              AppOutlinedButtons.outlinedButton02(
                onPressed: () {},
                buttonLabel: "÷",
              ),
            ],
          ),
          SizedBox(height: 2.5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppOutlinedButtons.outlinedButton01(
                onPressed: () {},
                buttonLabel: "7",
              ),
              AppOutlinedButtons.outlinedButton01(
                onPressed: () {},
                buttonLabel: "8",
              ),
              AppOutlinedButtons.outlinedButton01(
                onPressed: () {},
                buttonLabel: "9",
              ),
              AppOutlinedButtons.outlinedButton02(
                onPressed: () {},
                buttonLabel: "×",
              ),
            ],
          ),
          SizedBox(height: 2.5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppOutlinedButtons.outlinedButton01(
                onPressed: () {},
                buttonLabel: "4",
              ),
              AppOutlinedButtons.outlinedButton01(
                onPressed: () {},
                buttonLabel: "5",
              ),
              AppOutlinedButtons.outlinedButton01(
                onPressed: () {},
                buttonLabel: "6",
              ),
              AppOutlinedButtons.outlinedButton02(
                onPressed: () {},
                buttonLabel: "−",
              ),
            ],
          ),
          SizedBox(height: 2.5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppOutlinedButtons.outlinedButton01(
                onPressed: () {},
                buttonLabel: "1",
              ),
              AppOutlinedButtons.outlinedButton01(
                onPressed: () {},
                buttonLabel: "2",
              ),
              AppOutlinedButtons.outlinedButton01(
                onPressed: () {},
                buttonLabel: "3",
              ),
              AppOutlinedButtons.outlinedButton02(
                onPressed: () {},
                buttonLabel: "+",
              ),
            ],
          ),
          SizedBox(height: 2.5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 17.w),
              AppOutlinedButtons.outlinedButton01(
                onPressed: () {},
                buttonLabel: "0",
              ),
              AppOutlinedButtons.outlinedButton01(
                onPressed: () {},
                buttonLabel: ".",
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
