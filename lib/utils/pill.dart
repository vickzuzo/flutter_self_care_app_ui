import 'package:flutter/material.dart';
import 'package:self_care_app/utils/colors.dart';

class Pill extends StatelessWidget {
  final String pillText;

  const Pill({super.key, required this.pillText});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 5),
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(100)),
        child: Text(pillText));
  }
}
