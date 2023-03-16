import 'package:flutter/material.dart';

import '../../core/constants/color_constants.dart';
import '../../core/constants/image_constants.dart';
import '../job_card/job_card.dart';
import '../job_card/job_card_bookmark.dart';
import 'bookmark_tab_bar.dart';

class BookMarkScreen extends StatelessWidget {
  const BookMarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BookMarkTabBar();
  }
}
