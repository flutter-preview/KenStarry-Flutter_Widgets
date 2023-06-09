import 'package:flutter/material.dart';

class MyBottomNavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation bar"),
        centerTitle: true,
        toolbarHeight: 200,
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          //  list of icons
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "About"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Account"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Settings"),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.blueAccent,
        backgroundColor: Colors.redAccent,
        unselectedItemColor: Colors.blueGrey,
        unselectedLabelStyle: TextStyle(
          color: Colors.black87
        ),
        showUnselectedLabels: true,
      ),
    );
  }
}
