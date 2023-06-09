import 'package:flutter/material.dart';
import 'dart:ui';

class MyBackdropFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              Text(
                '0' * 10000,
                style: const TextStyle(color: Colors.green),
              ),
              Center(
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      //  direction of blur
                      sigmaX: 4.0,
                      sigmaY: 4.0
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      width: 250,
                      height: 250,
                      child: const Text("Blur"),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
