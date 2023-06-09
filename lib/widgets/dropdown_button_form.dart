import 'package:flutter/material.dart';

class MyDropDownButtonFormField extends StatefulWidget {
  const MyDropDownButtonFormField({super.key});

  @override
  State<MyDropDownButtonFormField> createState() => _MyDropDownButtonFormFieldState();
}

class _MyDropDownButtonFormFieldState extends State<MyDropDownButtonFormField> {

  //  list of items
  final List<String> items = ['Item 1', 'Item 2', 'Item 3'];

  String? selectedItem = 'Item 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: 200,
          height: 70,
          child: DropdownButtonFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(width: 5, color: Colors.blueGrey)
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(width: 5, color: Colors.greenAccent)
              )
            ),
            value: selectedItem,
            items: items
                .map((item) => DropdownMenuItem(value: item, child: Text(item)))
                .toList(),
            onChanged: (item) => setState(() {
              selectedItem = item;
            }),
          ),
        ),
      ),
    );
  }
}
