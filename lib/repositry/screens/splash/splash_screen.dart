import 'dart:async';

import 'package:blinkit_app/domain/constants/app_colors.dart';
import 'package:blinkit_app/repositry/screens/login/login_screen.dart';
import 'package:blinkit_app/repositry/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    /// Timer to Navigate Login Screen
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldbackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          /// Logo
          children: [UiHelper.CustomImage(img: 'splashlogo.png')],
        ),
      ),
    );
  }
}
