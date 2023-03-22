import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shigoto/presentation/company_card/company_card.dart';

class BookmarkCompany extends StatelessWidget{
  const BookmarkCompany({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CompanyCard()
    );
  }
  
}

// AlignedGridView.count(
// crossAxisCount: 2,
// mainAxisSpacing: 2,
// crossAxisSpacing: 4,
// itemBuilder: (context, index) {
// return CompanyCard();
// },
// ),