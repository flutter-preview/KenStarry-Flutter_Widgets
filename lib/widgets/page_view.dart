import 'package:flutter/material.dart';

class MyPageView extends StatelessWidget {
  MyPageView({Key? key}) : super(key: key);

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    _controller.animateToPage(
        2,
        duration: const Duration(milliseconds: 800),
        curve: Curves.bounceIn);

    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        physics: ClampingScrollPhysics(),
        children: [
          Container(color: Colors.red,),
          Container(color: Colors.deepPurple,),
          Container(color: Colors.blue,),
        ],
      ),
    );
  }
}
