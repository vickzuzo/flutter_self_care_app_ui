import 'package:flutter/material.dart';
import 'package:self_care_app/utils/colors.dart';
import 'package:self_care_app/utils/featured_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.white,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.gray,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
          color: Colors.grey[100],
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text(
                        "Hi Sarah!",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.purple[300],
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                        image: AssetImage("lib/images/profile-pic.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: AppColors.gray, size: 30),
                        const SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search...",
                              hintStyle: TextStyle(
                                color: AppColors.gray,
                                fontSize: 16,
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      GridView.count(
                          primary: false,
                          crossAxisCount: 2,
                          shrinkWrap: true,
                          crossAxisSpacing: 10,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: AppColors.dark,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Evening Meditation to Relax",
                                    style: TextStyle(
                                        color: AppColors.primary,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(6),
                                        decoration: BoxDecoration(
                                          color: AppColors.primary,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Icon(
                                          Icons.play_arrow,
                                          color: AppColors.white,
                                          size: 20,
                                        ),
                                      ),
                                      Text(
                                        "3-6 MIN",
                                        style: TextStyle(
                                          color: AppColors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Evening Meditation to Relax",
                                    style: TextStyle(
                                        color: AppColors.dark,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(6),
                                        decoration: BoxDecoration(
                                          color: AppColors.primary,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Icon(
                                          Icons.play_arrow,
                                          color: AppColors.white,
                                          size: 20,
                                        ),
                                      ),
                                      Text(
                                        "3-10 MIN",
                                        style: TextStyle(
                                          color: AppColors.dark,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ]),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Featured for you",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "See All",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppColors.gray,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const FeaturedItem(
                          title: "Explore new Activities",
                          items: ["Stress", "Anxiety", "Relax"],
                          active: true),
                      const SizedBox(height: 10),
                      const FeaturedItem(
                          title: "Explore new Activities",
                          items: ["Stress", "Anxiety", "Relax"],
                          active: false),
                      const SizedBox(height: 10),
                      const FeaturedItem(
                          title: "Explore new Activities",
                          items: ["Stress", "Anxiety", "Relax"],
                          active: false),
                      const SizedBox(height: 10),
                      const FeaturedItem(
                          title: "Explore new Activities",
                          items: ["Stress", "Anxiety", "Relax"],
                          active: false),
                      const SizedBox(height: 10),
                      const FeaturedItem(
                          title: "Explore new Activities",
                          items: ["Stress", "Anxiety", "Relax"],
                          active: false),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
