import 'package:flutter/material.dart';
import 'package:self_care_app/utils/colors.dart';
import 'package:self_care_app/utils/pill.dart';

class FeaturedItem extends StatelessWidget {
  final String title;
  final List items;
  final bool active;

  const FeaturedItem(
      {super.key,
      required this.title,
      required this.items,
      this.active = false});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: active ? AppColors.primary : AppColors.dark,
            borderRadius: BorderRadius.circular(25)),
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  // alignment: Alignment.topLeft,
                  child: FractionallySizedBox(
                    widthFactor: 0.9,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                                fontSize: 18,
                                color: AppColors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                for (var item in items) Pill(pillText: item)
                              ])
                        ]),
                  ),
                ),
                Column(children: [
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(Icons.play_arrow)),
                ]),
              ],
            )
          ],
        ));
  }
}
