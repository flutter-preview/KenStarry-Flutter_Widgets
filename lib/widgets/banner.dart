import 'package:flutter/material.dart';

class MyBanner extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: ClipRect(
          clipBehavior: Clip.antiAlias,
          child: Banner(
            message: "25% off",
            location: BannerLocation.topEnd,
            child: Container(
              width: 250,
              height: 250,
              color: Colors.orangeAccent,
              padding: const EdgeInsets.all(24),
              child: const Text("Hello"),
            ),
          )
        )
      ),
    );
  }
}