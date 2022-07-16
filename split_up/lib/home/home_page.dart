import 'package:flutter/material.dart';
import 'package:split_up/home/group_page.dart';
import 'package:split_up/pages/friends_page.dart';
import 'package:split_up/utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List pages = [
    GroupPage(),
    FriendsPage(),
    Container(
      child: Center(
        child: Text("Hii 3rd page"),
      ),
    ),
    Container(
      child: Center(
        child: Text("Hii 4th page"),
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.orangeColor,
        unselectedItemColor: Colors.black38,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        elevation: 20,
        // fixedColor: Colors.white,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.groups_outlined,
            ),
            label: "Groups",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Friends",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.browse_gallery),
            label: "Activity",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
