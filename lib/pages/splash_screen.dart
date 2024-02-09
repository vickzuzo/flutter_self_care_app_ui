import 'package:flutter/material.dart';
import 'package:self_care_app/pages/home_page.dart';
import 'package:self_care_app/utils/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: AppColors.primary,
        ),
        child: Center(
          child: Text(
            'SELF CARE',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
