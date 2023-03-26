import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shigoto/presentation/people_card/people_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'dart:math';

class CustomStag extends StatefulWidget {
  const CustomStag({super.key});

  @override
  State<CustomStag> createState() => _CustomStagState();
}

class _CustomStagState extends State<CustomStag> {
  List<String> firstList = List.generate(100, (index) => 'Item ${index + 1}');

  List<String> secondList = List.generate(10, (index) => 'Second item ${index}');

  List<double> height = List.generate(100, (index) => 40 );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyStaggeredListView(heights: height, names: secondList,)
    );
  }

}
class MyStaggeredListView extends StatelessWidget {
  final List<double> heights;
  final List<String> names;
  List<String> secondList = List.generate(10, (index) => 'Second item ${index}');

  MyStaggeredListView({Key? key, required this.heights, required this.names}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 2,
      itemCount: heights.length,
      itemBuilder: (BuildContext context, int index) {
        if (index % 10 == 0) {
          // Every 10th index, display a random item from the second list
          int secondListIndex = ((index + 1) ~/ 10) % secondList.length;
          return Container(
            width: double.infinity,
            height: 150,
            color: Colors.blueGrey,
            margin: EdgeInsets.only(bottom: 8.0),
            child: Center(
              child: Text(names[secondListIndex],
                style: TextStyle(fontSize: 24.0, color: Colors.white),
              ),
            ),
          );
        } else {
          // For other indices, create a staggered container with a random height from the first list
          return Container(
            height: heights[index],
            color: Colors.blueGrey,
            margin: EdgeInsets.only(bottom: 8.0),
          );
        }
      },
      staggeredTileBuilder: (int index) {
        if (index % 10 == 0) {
          // Every 10th index take up full width
          return StaggeredTile.count(2, 1);
        } else {
          // For other indices, use a random height from the list
          return StaggeredTile.extent(1, heights[index]);
        }
      },
      mainAxisSpacing: 8.0,
      crossAxisSpacing: 8.0,
      padding: EdgeInsets.all(8.0),
    );
  }
}

class MyListView extends StatelessWidget {
  final List<String> names;

  const MyListView({Key? key, required this.names}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        final itemIndex = index % names.length;
        return ListTile(
          title: Text(
            names[itemIndex],
            style: TextStyle(fontSize: 24.0),
          ),
        );
      },
    );
  }
}

List<double> randomHeights() {
  final Random random = Random();
  final List<double> heights = [];
  for (int i = 0; i < 100; i++) {
    heights.add(random.nextDouble() * 150); // generates a random number between 100 and 150
  }

  return heights;
}