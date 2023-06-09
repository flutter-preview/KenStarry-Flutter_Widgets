import 'package:flutter/material.dart';

class MyTabView extends StatelessWidget {
  MyTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tab bar"),
          ),
          body: const Column(
            children: [
              TabBar(
                tabs: [
                  //  specify 3 tabs
                  Tab(
                    text: "Home",
                    icon: Icon(
                      Icons.home,
                      color: Colors.redAccent,
                    ),
                  ),
                  Tab(
                    text: "Chat",
                    icon: Icon(
                      Icons.chat,
                      color: Colors.redAccent,
                    ),
                  ),
                  Tab(
                    text: "Calls",
                    icon: Icon(
                      Icons.call,
                      color: Colors.redAccent,
                    ),
                  ),
                ],
                labelColor: Colors.black,

              )
            ],
          ),
        ));
  }
}
