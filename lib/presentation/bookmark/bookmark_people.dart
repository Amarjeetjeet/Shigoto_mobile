import 'package:flutter/material.dart';
import 'package:shigoto/presentation/people_card/people_card.dart';

class BookmarkPeople extends StatelessWidget{
  const BookmarkPeople({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      childAspectRatio : (MediaQuery.of(context).size.width / 2 ) / (MediaQuery.of(context).size.height / 3),
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        PeopleCard(),
        PeopleCard(),
        PeopleCard(),
        PeopleCard(),
        PeopleCard(),
        PeopleCard(),
        PeopleCard(),
      ],
    );
  }

}