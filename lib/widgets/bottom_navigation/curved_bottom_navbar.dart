import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MyCurvedBottomNavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyCurvedBottomNavBarState();
}

class _MyCurvedBottomNavBarState extends State<MyCurvedBottomNavBar> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = [
    Container(
      padding: const EdgeInsets.all(16),
      height: double.infinity,
      width: double.infinity,
      child: const Center(
        child: Icon(Icons.call, size: 48),
      ),
    ),
    Container(
      padding: const EdgeInsets.all(16),
      height: double.infinity,
      width: double.infinity,
      child: const Center(
        child: Icon(Icons.camera, size: 48),
      ),
    ),
    Container(
      padding: const EdgeInsets.all(16),
      height: double.infinity,
      width: double.infinity,
      child: const Center(
        child: Icon(Icons.chat, size: 48),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange.shade600,
      appBar: AppBar(
        title: const Text("Bottom Nav bar"),
        leading: const Icon(Icons.menu),
        centerTitle: true,
        toolbarHeight: 100,
        elevation: 0,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: const [
          Icon(Icons.call),
          Icon(Icons.camera),
          Icon(Icons.chat),
        ],
        animationDuration: const Duration(milliseconds: 500),
        backgroundColor: Colors.deepOrange.shade200,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        }
      ),
    );
  }
}
