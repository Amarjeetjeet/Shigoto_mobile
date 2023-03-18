import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shigoto/presentation/people_card/people_card.dart';
import '../../core/constants/app_style.dart';
import '../../core/constants/image_constants.dart';
class BookmarkPeople extends StatelessWidget{
  const BookmarkPeople({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AlignedGridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 2,
        crossAxisSpacing: 4,
        itemBuilder: (context, index) {
          return PeopleCard();
        },
      ),
    );
  }

  Widget buildGridView() {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      // width / height: fixed for *all* items
      childAspectRatio: 0.55,
      crossAxisCount: 2,
    ),
    // return a custom ItemCard
    itemBuilder: (context, i) => Expanded(child: PeopleCard()),
    itemCount: 10,
  );
  }

}