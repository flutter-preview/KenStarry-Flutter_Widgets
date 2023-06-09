import 'package:flutter/material.dart';

class MyNavigateCalls extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyNavigateCallsState();
}

class _MyNavigateCallsState extends State<MyNavigateCalls> {
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
      appBar: AppBar(
        title: const Text("Bottom Nav bar"),
        leading: const Icon(Icons.menu),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
          BottomNavigationBarItem(icon: Icon(Icons.camera), label: "Camera"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
        ],
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        }
      ),
    );
  }
}
