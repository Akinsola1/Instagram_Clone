import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:myinstagram_clone/screens/add.dart';
import 'package:myinstagram_clone/screens/home_page.dart';
import 'package:myinstagram_clone/screens/search.dart';
import 'package:line_icons/line_icons.dart';

class base_screen extends StatefulWidget {
  const base_screen({Key? key}) : super(key: key);

  @override
  _base_screenState createState() => _base_screenState();
}

class _base_screenState extends State<base_screen> {
  // bottom navigation bar
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    home_page(),
    search(),
    add()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(LineIcons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(LineIcons.home), label: "Card"),
            BottomNavigationBarItem(
                icon: Icon(LineIcons.home), label: "Settings"),
            BottomNavigationBarItem(
                icon: Icon(LineIcons.home), label: "Overview"),
          ],
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
    );
  }
}
