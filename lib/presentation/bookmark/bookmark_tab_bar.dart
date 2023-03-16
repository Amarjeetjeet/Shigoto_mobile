import 'package:flutter/material.dart';
import 'package:shigoto/core/constants/app_style.dart';
import 'package:shigoto/core/constants/color_constants.dart';
import 'package:shigoto/presentation/bookmark/bookmark_people.dart';

import '../job_card/job_card_bookmark.dart';
import 'bookmark_company.dart';

class BookMarkTabBar extends StatefulWidget{
  const BookMarkTabBar({super.key});

  @override
  State<BookMarkTabBar> createState() => _BookMarkTabBarState();
}

class _BookMarkTabBarState extends State<BookMarkTabBar> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 60,
          child: TabBar(
            tabs: [
              Container(
                child: new Text(
                  'Jobs',
                  style: AppStyle.txtDmSans16W600,
                ),
              ),
              Container(
                child: new Text(
                  'People',
                  style: AppStyle.txtDmSans16W600,
                ),
              ),
              Container(
                child: new Text(
                  'Company',
                  style: AppStyle.txtDmSans16W600,
                ),
              ),
            ],
            unselectedLabelColor: const Color(0xffacb3bf),
            indicatorColor: ColorConstants.primaryColor,
            labelColor: ColorConstants.primaryColor,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 1.0,
            indicatorPadding: EdgeInsets.all(10),
            isScrollable: false,
            controller: _tabController,
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.69,
          child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                JobCardBookmark(),
                BookmarkCompany(),
                BookmarkPeople()
              ]),
        )
      ],
    );
  }
}