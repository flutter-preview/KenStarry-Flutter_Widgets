import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App bar"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
        backgroundColor: Colors.orangeAccent,
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(24),
            bottomLeft: Radius.circular(24)
          )
        ),
      ),
      body: Center(
        child: Container(
          height: 120,
          width: double.infinity,
          color: Colors.orangeAccent,
          child: const Align(
            alignment: Alignment.topRight,
            child: Text("Hey"),
          ),
        ),
      ),
    );
  }
}
