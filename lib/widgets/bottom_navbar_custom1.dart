import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBarCustom extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyBottomNavBarCustomState();
}

class _MyBottomNavBarCustomState extends State<MyBottomNavBarCustom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation bar"),
        centerTitle: true,
        toolbarHeight: 200,
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12
        ),
        child:  GNav(
          backgroundColor: Colors.black,
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.grey.shade800,
          padding: const EdgeInsets.all(16),
          gap: 8,
          tabs: [
            GButton(
              icon: Icons.home,
              haptic: false,
              text: "Home",
              onPressed: () {},
            ),
            GButton(
              icon: Icons.favorite_border,
              haptic: false,
              text: "Favourite",
              onPressed: () {},
            ),
            GButton(
              icon: Icons.search,
              haptic: false,
              text: "Search",
              onPressed: () {},
            ),
            GButton(
              icon: Icons.settings,
              haptic: false,
              text: "Settings",
              onPressed: () {},
            ),
          ],

        )
      ),
    );
  }
}
