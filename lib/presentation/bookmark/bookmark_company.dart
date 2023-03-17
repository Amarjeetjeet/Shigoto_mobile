import 'package:flutter/material.dart';
import 'package:shigoto/presentation/company_card/company_card.dart';

class BookmarkCompany extends StatelessWidget{
  const BookmarkCompany({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      childAspectRatio : 3/4,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        CompanyCard(),
        CompanyCard(),
        CompanyCard(),
        CompanyCard(),
        CompanyCard(),
        CompanyCard(),
      ],
    );
  }
  
}