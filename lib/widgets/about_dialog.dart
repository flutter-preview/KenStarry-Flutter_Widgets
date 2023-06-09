import 'package:flutter/material.dart';

class MyAboutDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Center(
      child: ElevatedButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => const AboutDialog(
                applicationIcon: FlutterLogo(),
                applicationVersion: 'version 1.0.0',
                applicationName: "Flutter App",
                children: [
                  Text("This is an alert dialog")
                ],
              )
          );
        },
        child: const Text("Show About Dialog"),
      ),
    );
  }
}