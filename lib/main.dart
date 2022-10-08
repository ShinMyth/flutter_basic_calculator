import 'package:basiccalculator/screens/splash_screen/splash_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return const MaterialApp(
          title: "Flutter Basic Calculator",
          home: SplashScreenView(),
        );
      },
    );
  }
}
