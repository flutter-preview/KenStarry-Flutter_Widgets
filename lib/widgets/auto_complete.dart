import 'package:flutter/material.dart';

//  Auto complete widget shows suggestions to a user while typing
class MyAutoComplete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //  list of strings
    const List<String> fruits = ["Apple", "Banana", "Pears", "Peach", "Bruits"];

    return Scaffold(body: SafeArea(
      child: Autocomplete<String>(
        optionsBuilder: (TextEditingValue userInput) {
          if (userInput.text == "") {
            return const Iterable<String>.empty();
          }

          return fruits.where((fruit) => fruit.contains(userInput.text));
        },
        onSelected: (String fruit) {
          print("The fruit ${fruit} was selected");
        },
      ),
    ));
  }
}
