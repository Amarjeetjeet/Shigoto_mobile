import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shigoto/presentation/people_card/people_card.dart';

class CustomStag extends StatefulWidget {
  const CustomStag({super.key});

  @override
  State<CustomStag> createState() => _CustomStagState();
}

class _CustomStagState extends State<CustomStag> {

  List<String> firstList = List.generate(100, (index) => 'Item ${index + 1}');

  List<String> secondList = List.generate(8, (index) => 'Second item ${index}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: firstList.length,
        itemBuilder: (BuildContext context, int index) {
          if ((index) % 10 == 0) { // Check if the index is a multiple of 10
            int secondListIndex = ((index + 1) ~/ 10) % secondList.length;
            // Calculate the index of the item in the second list using integer division and modulo
            return ListTile(
              title: Text(secondList[secondListIndex]), // Print the item from the second list
            );
          } else {
            return ListTile(
              title: Text(firstList[index]), // Print the item from the first list
            );
          }
        },
      )
    );
  }
}
