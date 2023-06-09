import 'package:flutter/material.dart';

class MyAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    icon: const Icon(Icons.crisis_alert),
                    iconColor: Colors.orangeAccent,
                    alignment: AlignmentDirectional.centerStart,
                    actionsAlignment: MainAxisAlignment.end,
                    title: const Text("Hello There"),
                    actions: [
                      //  close the alert dialog
                      TextButton(
                          onPressed: () {
                            //  close the alert dialog
                            Navigator.of(context).pop();
                          },
                          child: const Text("Close"))
                    ],
                    content:
                        const Text("This is some beautiful idea you have!"),
                  ));
        },
        child: const Text("Show Alert"),
      ),
    ));
  }
}
