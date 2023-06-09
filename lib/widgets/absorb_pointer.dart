import 'package:flutter/material.dart';

//  Absorb pointer makes a button unclickable
class MyAbsorbPointer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              SizedBox(
                width: 200,
                height: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  child: null,
                ),
              ),
              SizedBox(
                width: 100,
                height: 200,
                child: AbsorbPointer(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent
                    ),
                    onPressed: () {},
                    child: null,
                  ),
                )
              )
            ],
          )
      ),
    );
  }
}