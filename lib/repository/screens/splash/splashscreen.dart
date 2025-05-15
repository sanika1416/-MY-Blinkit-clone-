import 'dart:async';

import 'package:blinkit/repository/screens/login/loginscreen.dart';
import 'package:flutter/material.dart';
import '../../../domain/constants/appcolors.dart';
import '../../widgets/uihelper.dart';

// Assuming AppColors and UiHelper are defined somewhere in your project.

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), (){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
    });
  }
  @override // ✅ Use @override, not @Override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldbackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(img: "blinkit_main_page.png")
          ],
        ),
      ),
    );
  }
}
