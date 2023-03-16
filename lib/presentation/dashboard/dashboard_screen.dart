import 'package:flutter/material.dart';
import 'package:shigoto/core/constants/app_style.dart';
import 'package:shigoto/core/constants/color_constants.dart';
import 'package:shigoto/presentation/bookmark/bookmark_screen.dart';
import 'package:shigoto/presentation/dashboard/home_screen.dart';

import '../../core/constants/image_constants.dart';
import '../feed/Feed_screen.dart';

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
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
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
        backgroundColor: Colors.white.withOpacity(0.1),
        centerTitle: false,
        title: Text("Shigoto",style: AppStyle.txtDmSans16W700primaryTextColor,),
        elevation: 0,
        actions: const [
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
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.spoke_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 23,
              backgroundColor: ColorConstants.primaryColor,
              child: Icon(Icons.add,color: Colors.white,),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger_outline),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border_outlined),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor:  ColorConstants.primaryTextColor,
        unselectedItemColor:  ColorConstants.a49EB5Color,
        onTap: _onItemTapped,
      ),
    );
  }
}
