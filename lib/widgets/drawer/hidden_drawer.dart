import 'package:flutter/material.dart';
import 'package:flutter_map_widgets/widgets/drawer/pages/profile.dart';
import 'package:flutter_map_widgets/widgets/drawer/pages/settings.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  final myTextStyle = const TextStyle(
      fontWeight: FontWeight.normal, fontSize: 14, color: Colors.white);

  final mySelectedTextStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 22,
    color: Colors.white,
  );

  @override
  void initState() {
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              baseStyle: myTextStyle,
              name: "Profile Page",
              selectedStyle: mySelectedTextStyle,
              colorLineSelected: Colors.black),
          ProfilePage()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              baseStyle: myTextStyle,
              name: "Settings Page",
              selectedStyle: mySelectedTextStyle,
              colorLineSelected: Colors.black),
          SettingsPage()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      screens: _pages,
      backgroundColorMenu: Colors.deepPurple.shade400,
      initPositionSelected: 0,
      slidePercent: 65,
      contentCornerRadius: 32,
    );
  }
}
