import 'package:flutter/material.dart';

import '../job_card/job_card_bookmark.dart';

class BookMarkJob extends StatelessWidget{
  const BookMarkJob({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: JobCardBookmark(),
    );
  }

}