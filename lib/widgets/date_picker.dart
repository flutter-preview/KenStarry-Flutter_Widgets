import 'package:flutter/material.dart';

class MyDatePicker extends StatefulWidget {
  @override
  State<MyDatePicker> createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> {
  DateTime _dateTime = DateTime.now();

  void _showDatePicker(context) {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2070))
        .then((value) => {setState(() => _dateTime = value!)});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //  display date chosen by user
              Text(_dateTime.month.toString()),

              MaterialButton(
                onPressed: () => _showDatePicker(context),
                color: Colors.blue,
                child: const Text(
                  "Date Picker",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
