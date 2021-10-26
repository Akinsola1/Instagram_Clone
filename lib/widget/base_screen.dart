import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:myinstagram_clone/screens/add.dart';
import 'package:myinstagram_clone/screens/favouritepost.dart';
import 'package:myinstagram_clone/screens/home_page.dart';
import 'package:myinstagram_clone/screens/profile.dart';
import 'package:myinstagram_clone/screens/reels.dart';
import 'package:myinstagram_clone/screens/search.dart';
import 'package:line_icons/line_icons.dart';

class base_screen extends StatefulWidget {
  const base_screen({Key? key}) : super(key: key);

  @override
  _base_screenState createState() => _base_screenState();
}

class _base_screenState extends State<base_screen> {
  bool color = false;
  // bottom navigation bar
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    home_page(),
    search(),
    reels(),
    favouritePost(),
    profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  LineIcons.home,
                  size: 30,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  LineIcons.search,
                  size: 30,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  LineIcons.youtube,
                  size: 30,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  LineIcons.heart,
                  size: 30,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 30,
                ),
                label: ""),
          ],
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
              color = true;
            });
          }),
    );
  }
}
