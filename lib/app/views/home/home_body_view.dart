import 'package:flutter/material.dart';
import 'package:kasifim_app/app/views/favorites/favorites_view.dart';
import 'package:kasifim_app/app/views/home/home_view.dart';
import 'package:kasifim_app/app/views/explore/explore_view.dart';

import 'package:kasifim_app/app/views/profile/widget/profile_tab.dart';
import 'package:kasifim_app/gen/colors.gen.dart';

class CustomNavBar extends StatefulWidget {
  CustomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  List pages = [
    const LocationView(),
    const HomeView(),
    FavoritesView(),
    ProfileTab(),
  ];
  int currentIndex = 1;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(5),
        height: 55,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
            selectedItemColor: ColorName.orange,
            unselectedItemColor: ColorName.darkGrey,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            iconSize: 24,
            onTap: onTap,
            currentIndex: currentIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.explore,
                ),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_sharp,
                ),
                label: 'Favorites',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_3_sharp,
                ),
                label: 'Me',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
