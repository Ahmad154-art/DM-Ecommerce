import '../features/homepage/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: EasySplashScreen(
          
          showLoader: false,
          backgroundColor: Color(0xffEB671B),
          logo: Image.asset(
            'image/Logo-DM.png',
            width: 200,
          ),
          navigator: Home(),
        ),
      ),
      
    );
  }
}
