import 'package:flutter/material.dart';

class MyPopupMenu extends StatefulWidget {
  const MyPopupMenu({super.key});

  @override
  State<MyPopupMenu> createState() => _MyPopupMenuState();
}

class _MyPopupMenuState extends State<MyPopupMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popup menu'),
        actions: [
          PopupMenuButton(
              onSelected: (value) {
                if (value == MenuItem.item1) {
                  //  do something
                } else if (value == MenuItem.item2) {
                } else if (value == MenuItem.item3) {
                } else if (value == MenuItem.item3) {}
              },
              itemBuilder: (context) => const [
                    PopupMenuItem(
                        value: MenuItem.item1, child: Text('popup 1')),
                    PopupMenuItem(
                        value: MenuItem.item1, child: Text('popup 2')),
                    PopupMenuItem(
                        value: MenuItem.item1, child: Text('popup 3')),
                    PopupMenuItem(
                        value: MenuItem.item1, child: Text('popup 4')),
                  ])
        ],
      ),
    );
  }
}

enum MenuItem {
  item1,
  item2,
  item3,
  item4,
}
