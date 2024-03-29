import 'package:flutter/material.dart';
import 'package:shigoto/core/constants/app_style.dart';
import 'package:shigoto/core/constants/color_constants.dart';
import 'package:shigoto/presentation/bookmark/bookmark_screen.dart';
import 'package:shigoto/presentation/dashboard/home_screen.dart';

import '../../core/constants/image_constants.dart';
import '../error_widget_or_empty_widget/no_notification.dart';
import '../error_widget_or_empty_widget/no_saving_found.dart';
import '../feed/Feed_screen.dart';
import '../error_widget_or_empty_widget/empty_message_box.dart';
import '../setting/setting.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    FeedScreen(),
    Setting(),
    NoNotificationFound(),
    BookMarkScreen(),
    BookMarkScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: ColorConstants.primaryColor),
        backgroundColor: ColorConstants.offWhiteColor,
        centerTitle: false,
        title: Text("Shigoto",style: AppStyle.txtDmSans16W700primaryTextColor,),
        elevation: 0,
        actions: [

          IconButton(onPressed: (){
            _onItemTapped(5);
          }, icon: Icon(Icons.notifications_none_sharp)),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0 , horizontal: 12),
            child: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(ImageConstants.userImage),
            ),
          ),

        ],
      ),
      drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        items: <BottomNavigationBarItem>[
          buildBottomNavigationBarItem(Icons.home_outlined),
          buildBottomNavigationBarItem(Icons.spoke_outlined),
          buildBottomNavigationBarItem(Icons.manage_search_outlined),
          buildBottomNavigationBarItem(Icons.messenger_outline),
          buildBottomNavigationBarItem(Icons.bookmark_border_outlined),
        ],
        currentIndex:  _selectedIndex > 4 ? 1 : _selectedIndex,
        selectedItemColor:  ColorConstants.primaryTextColor,
        unselectedItemColor:  ColorConstants.a49EB5Color,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(IconData data) {
    return BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Icon(data),
          ),
          label: '',
        );
  }
}
