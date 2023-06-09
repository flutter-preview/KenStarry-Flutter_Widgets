import 'package:flutter/material.dart';

class MyAboutListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: Center(
          child: AboutListTile(
            icon: Icon(Icons.info),
            applicationIcon: FlutterLogo(),
            applicationName: "Flutter App",
            applicationVersion: 'version 1.0.0',
            applicationLegalese: 'Legalese',
            aboutBoxChildren: [
              Text("Hello there, I'm a list tile!")
            ],
          )
      ),
    );
  }
}